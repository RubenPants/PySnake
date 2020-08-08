"""
dql_agent.py

Agent which is trained using the Deep Q-Learning approach.
https://en.wikipedia.org/wiki/Q-learning
"""
from random import choice, random

import numpy as np
import tensorflow as tf

from agents.a_star import AStar
from agents.base import Agent
from models.handler import create_model


class DeepQLearning(Agent):
    """Agent that learns via the Deep Q-Learning algorithm."""
    
    __slots__ = {
        'training', 'last_score', 'tag',
        'model', 'model_t', 'model_v',
        'states_mem', 'actions_mem', 'd_scores_mem',
        'gamma', 'lr', 'eps', 'eps_decay', 'eps_max', 'eps_min',
    }
    
    def __init__(self,
                 model_type,
                 model_v: int = 0,
                 training: bool = True,
                 gamma: float = 0.9,
                 lr: float = 0.05,
                 eps_decay: float = 0.98,
                 eps_max: float = 0.4,
                 eps_min: float = 0.1):
        super().__init__(training=training, tag='dql')
        self.model = None  # Policy used to query actions given a state
        self.model_t = model_type  # Type of policy used (mlp, cnn)
        self.model_v = model_v  # Version number of the model, 0 is non-versioned
        
        # Training
        self.states_mem: list = None  # Keeps the memorised states
        self.actions_mem: list = None  # Keeps the memorised actions
        self.d_scores_mem: list = None  # Keeps the memorised delta scores
        
        # DQL specific
        self.gamma: float = gamma  # Decaying factor to discount the scores
        self.lr: float = lr  # Learning rate, should be rather high (model itself updates via separate lr=0.01)
        self.eps: float = None  # Randomisation epsilon
        self.eps_decay: float = eps_decay  # Decaying factor of the randomisation epsilon
        self.eps_max: float = eps_max  # Maximum value of the randomisation epsilon
        self.eps_min: float = eps_min  # Minimum value of the randomisation epsilon
    
    def __str__(self):
        return f"DeepQLearning(\n" \
               f"\tmodel-version={self.model_v}\n" \
               f"\tmodel-type={self.model_t}\n" \
               f"\tgamma={self.gamma}\n" \
               f"\tlearning rate={self.lr}\n" \
               f"\tepsilon={self.eps}\n" \
               f"\tmax(epsilon)={self.eps_max}\n" \
               f"\tmin(epsilon)={self.eps_min}\n" \
               f"\tdecay(epsilon)={self.eps_decay}\n" \
               f")"
    
    def __call__(self, games):
        """
        Define the 'most suitable action' (as defined by the policy) for each of the games.
        
        :param games: List of games, each in a certain state
        :return: List of actions, where each action is either 0 (straight), 1 (left), or 2 (right)
        """
        if self.model is None: raise Exception("Initialise first via 'reset'")
        
        if self.training:
            return self.query_and_remember(games=games)
        else:
            return self.query(games=games)
    
    def reset(self, n_envs, sample_game):
        super().reset(n_envs=n_envs, sample_game=sample_game)
        if not self.model and not self.load_model(): self.create_model(sample_game.get_board_relative().shape)
        self.eps = self.eps_max
        self.states_mem = []
        self.actions_mem = []
        self.d_scores_mem = []
    
    def query(self, games):
        """Query for actions, do not memorise seen states. Only used for evaluation."""
        # Fetch all the states from the given messages
        states = np.asarray([g.get_board_relative() for g in games])
        
        # Fetch the actions using the model
        predictions = self.model.predict(states)
        
        # Parse actions from predictions (choose most likely actions)
        return [np.argmax(p) for p in predictions]
    
    def query_and_remember(self, games):
        """Query for actions and remember both states and actions to use them as training data later on."""
        # Fetch all the states from the given messages
        states = np.asarray([g.get_board_relative() for g in games])
        self.states_mem.append(states)
        
        # Fetch received scores
        scores = np.asarray([g.score for g in games])
        d_scores = [scores[i] - self.last_score[i] for i in range(len(scores))]
        self.last_score = scores
        self.d_scores_mem.append(d_scores)
        
        # Fetch the actions using the model
        predictions = self.model.predict(states)
        
        # Parse actions from predictions (choose most likely actions)
        actions = [np.argmax(p) for p in predictions]
        
        # Randomise fraction epsilon of the actions, and decay the epsilon afterwards
        a_star = AStar()
        a_star.reset(n_envs=1, sample_game=None)
        for i in range(len(actions)):
            if random() < self.eps:
                if random() < 0.2:  # Empirically chosen
                    actions[i] = choice([0, 1, 2])  # Perform a randomised action
                else:
                    a_star.recalculate = [0]
                    actions[i] = a_star([games[i]])[0]  # Ask the A* algorithm for the most suitable action
        self.eps = max(self.eps * self.eps_decay, self.eps_min)
        
        # Remember and return the chosen actions
        self.actions_mem.append(actions)
        return actions
    
    def create_model(self, input_dim):
        self.model = create_model(model_tag=self.model_t, input_dim=input_dim)
        self.model.summary()
    
    def train(self, duration, max_duration: int = 100, score_adj: bool = True):
        """
        Train the model with the memorised data. Each game is trained sequentially since length of states doesn't
        necessarily coincide.
        
        :param duration: Indicates duration of each simulation
        :param max_duration: Maximum duration of the simulation
        :param score_adj: Adjust the score (shift to right) to match (state, action) pairs
        """
        assert self.states_mem is not None and self.actions_mem is not None and self.d_scores_mem is not None
        assert len(self.states_mem) == len(self.actions_mem) == len(self.d_scores_mem)
        assert len(self.states_mem[0]) == len(duration)  # Equal number of environments
        assert len(self.states_mem) == max(duration)  # Equal number of environments
        
        # TODO: Possibility to execute in parallel; performance increase
        # Iterate over each of the environments to collect all the training data: inputs (states) and outputs (q-values)
        states = []
        q_values = []
        for i_env, d in enumerate(duration):
            scores = [s[i_env] for s in self.d_scores_mem[:d]]
            if score_adj:
                scores = scores[1:]
                if d == max_duration and sum(scores) > 0:  # Never died and found at least one apple in its lifetime
                    scores.append(0)
                elif d == max_duration:
                    scores.append(-.1)  # Never found apple, but didn't die
                else:
                    scores.append(-1)  # Last action was invalid move; punish
            
            # Discount the scores
            last_state = self.states_mem[d - 1][i_env]  # TODO: Disabled last_state
            discounted_scores = self.discount(scores, state=last_state)
            
            # Train
            states_temp = []
            for t in range(d):
                # Ignore all entries with negligible discounted scores
                if abs(discounted_scores[t]) <= 1e-2: continue
                
                # Get the state to add to the dataset
                states_temp.append(self.states_mem[t][i_env])
            
            # Make predictions
            q_values_temp = self.model.predict(np.asarray(states_temp))
            
            # Decay the Q-values with the learning rate
            q_values_temp *= (1 - self.lr)
            
            # Update the Q-values with the calculated discounted scores
            i = 0
            for t in range(d):
                # Ignore all entries with negligible discounted scores
                if abs(discounted_scores[t]) <= 1e-2: continue
                
                # Increase the action-chosen Q-value with discounted_score * lr
                q = q_values_temp[i][self.actions_mem[t][i_env]]
                q_values_temp[i][self.actions_mem[t][i_env]] = min(max(q + self.lr * discounted_scores[t], 0), 1)
                i += 1
            
            # Add the data
            states += states_temp
            q_values += q_values_temp.tolist()
        
        # Train the model
        history = self.model.fit(
                x=np.asarray(states),  # TODO: Add callback to TensorBoard
                y=np.asarray(q_values),
                epochs=1,
                verbose=0,
        )
        # print("Average duration:", sum(duration) / len(duration), "steps")  # TODO: Add callback to TensorBoard
        self.save_model()
        return history.history['loss'][0]
    
    def discount(self, scores, state=None):
        """Discount the received rewards."""
        # The initial cumulative reward will be the discounted maximal Q-value of the current (last) state
        if state is not None and scores[-1] >= 0:
            cum_r = self.gamma * np.max(self.model.predict(state.reshape((1,) + state.shape)))
        else:
            cum_r = 0
        
        # Discount all the rewards in reverse order (for efficiency)
        discounted = np.zeros_like(scores, dtype=np.float32)
        for t in reversed(range(0, len(scores))):
            cum_r = scores[t] + self.gamma * cum_r
            discounted[t] = cum_r
        return discounted
    
    def save_model(self, model_name: str = None, epoch: int = None):
        """Save the current model in the 'models' folder found under root."""
        if self.model_v == 0: return  # Unversioned models aren't saved/loaded
        if not model_name:
            model_name = f'{self.model_t}_{self.model_v}'
            if epoch is not None: model_name += f'_e{epoch}'
        self.model.save(f"models/dql/{model_name}")
        # print("==> Model saved successfully!")
        # TODO: Save meta-data as well
    
    def load_model(self, model_name: str = None, epoch: int = None):
        """Load the model, return boolean indicating if model loaded successfully or not."""
        if self.model_v == 0: return False  # Unversioned models aren't saved/loaded
        if not model_name:
            model_name = f"{self.model_t}_{self.model_v}"
            if epoch is not None: model_name += f'_e{epoch}'
        try:
            self.model = tf.keras.models.load_model(f"models/dql/{model_name}")
            self.model.summary()
            print("==> Model loaded successfully!")
            return True
        except OSError:
            return False
