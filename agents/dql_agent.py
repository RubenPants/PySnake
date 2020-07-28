"""
dql_agent.py

Agent which is trained using the Deep Q-Learning approach.
https://en.wikipedia.org/wiki/Q-learning
"""
from random import choice, random

import numpy as np
import tensorflow as tf

from agents.base import Agent
from environment.messenger import M_BOARD, M_FLAT, M_RELATIVE, M_SCORE
from models.handler import CNN, create_model
from utils.timing import drop, prep


class DeepQLearning(Agent):
    """Agent that learns via the Deep Q-Learning algorithm."""
    
    __slots__ = {
        'training', 'm_tag', 'last_score',
        'model', 'model_t', 'model_v',
        'states_mem', 'action_mem', 'd_scores_mem',
        'gamma', 'lr', 'eps', 'eps_decay', 'eps_max', 'eps_min'
    }
    
    def __init__(self,
                 model_type,
                 model_v: int = 0,
                 training: bool = True,
                 gamma: float = 0.9,
                 lr: float = 0.1,
                 eps_decay: float = 0.95,
                 eps_max: float = 0.4,
                 eps_min: float = 0.1):
        m_type = M_RELATIVE if model_type == CNN else M_FLAT
        super().__init__(message_tag=m_type, training=training)
        self.model = None  # Policy used to query actions given a state
        self.model_t = model_type  # Type of policy used (mlp, cnn, rnn)
        self.model_v = model_v  # Version number of the model, 0 is non-versioned
        
        # Training
        self.states_mem: list = None  # Keeps the memorised states
        self.action_mem: list = None  # Keeps the memorised actions
        self.d_scores_mem: list = None  # Keeps the memorised delta scores
        
        # DQL specific
        self.gamma: float = gamma  # Discount factor
        self.lr: float = lr  # Learning rate, should be rather high (model itself updates via separate lr=0.01)
        self.eps: float = None  # Randomisation epsilon
        self.eps_decay: float = eps_decay  # Decaying factor of the randomisation epsilon
        self.eps_max: float = eps_max  # Maximum value of the randomisation epsilon
        self.eps_min: float = eps_min  # Minimum value of the randomisation epsilon
    
    def __call__(self, msgs):
        """
        Define the 'most suitable action' (as defined by the policy) for each of the games.
        
        :param msgs: List of messages sent by requested messenger
        :return: List of actions, where each action is either 0 (straight), 1 (left), or 2 (right)
        """
        if self.model is None: raise Exception("Initialise first via 'reset'")
        
        if self.training:
            return self.query_and_remember(msgs=msgs)
        else:
            return self.query(msgs=msgs)
    
    def reset(self, n_envs, sample_msg):
        super().reset(n_envs=n_envs, sample_msg=sample_msg)
        if not self.model and not self.load_model(): self.create_model(sample_msg[M_BOARD].shape)
        self.eps = self.eps_max
        self.states_mem = []
        self.action_mem = []
        self.d_scores_mem = []
    
    def query(self, msgs):
        """Query for actions, do not memorise seen states. Only used for evaluation."""
        # Fetch all the states from the given messages
        states = np.asarray([m[M_BOARD] for m in msgs])
        
        # Fetch the actions using the model
        predictions = self.model.predict(states)
        
        # Parse actions from predictions (choose most likely actions)
        return [np.argmax(p) for p in predictions]
    
    def query_and_remember(self, msgs):
        """Query for actions and remember both states and actions to use them as training data later on."""
        # Fetch all the states from the given messages
        states = np.asarray([m[M_BOARD] for m in msgs])
        self.states_mem.append(states)
        
        # Fetch received scores
        scores = np.asarray([m[M_SCORE] for m in msgs])
        d_scores = [scores[i] - self.last_score[i] for i in range(len(scores))]
        self.last_score = scores
        self.d_scores_mem.append(d_scores)
        
        # Fetch the actions using the model
        predictions = self.model.predict(states)
        
        # Parse actions from predictions (choose most likely actions)
        actions = [np.argmax(p) for p in predictions]
        self.action_mem.append(actions)
        
        # Randomise fraction epsilon of the actions, and decay the epsilon afterwards
        for i in range(len(actions)):
            if random() < self.eps: actions[i] = choice([0, 1, 2])
        self.eps = max(self.eps * self.eps_decay, self.eps_min)
        return actions
    
    def create_model(self, input_dim):
        self.model = create_model(model_tag=self.model_t, input_dim=input_dim)
        self.model.summary()
    
    def train(self, duration):
        """
        Train the model with the memorised data. Each game is trained sequentially since length of states doesn't
        necessarily coincide.
        
        :param duration: Indicates duration of each simulation
        """
        assert self.states_mem and self.action_mem and self.d_scores_mem
        assert len(self.states_mem) == len(self.action_mem) == len(self.d_scores_mem)
        assert len(self.states_mem[0]) == len(duration)
        prep("Training the DQL agent", key='dql')
        
        # Iterate over each of the environments to collect all the states
        states = []  # Inputs of the model
        q_values = []  # Desired (updated) outputs of the model
        for i_env, d in enumerate(duration):
            last_state = self.states_mem[d][i_env]
            scores = [s[i_env] for s in self.d_scores_mem[1:d]]
            if d == max(duration):
                if sum(scores) == 0:
                    scores.append(-1)  # No apples found in lifetime (likely in infinite loop); punish
                else:
                    scores.append(0)  # Game externally terminated
            else:
                scores.append(-1)  # Last action was invalid move; punish
            
            # Discount the scores
            discounted_scores = self.discount(scores, last_state)
            
            # Train
            for t in range(d):
                states.append(self.states_mem[t][i_env])
                
                # Fetch the Q-value for the given state
                q_value = self.model.predict(states[-1].reshape((1,) + states[-1].shape))
                assert min(q_value[0]) > 0
                
                # Decay the Q-values with the learning rate
                q_value *= (1 - self.lr)
                
                # Increase the action-chosen Q-value with discounted_score * lr
                q_value[0][self.action_mem[t][i_env]] += self.lr * discounted_scores[t]
                q_values.append(q_value)
            assert len(states) == len(q_values)
        
        # Train the model
        self.model.fit(
                x=np.asarray(states),  # TODO: Add callback to TensorBoard
                y=np.asarray(q_values),
                batch_size=64,
                epochs=1,
        )
        drop(key='dql')
        print("Average duration:", sum(duration) / len(duration), "steps")  # TODO: Add callback to TensorBoard
    
    def discount(self, scores, last_state):
        """Discount the received rewards."""
        # The initial cumulative reward will be the discounted maximal Q-value of the current (last) state
        cum_r = self.gamma * np.max(self.model.predict(last_state.reshape((1,) + last_state.shape)))
        
        # Discount all the rewards in reverse order (for efficiency)
        discounted = np.zeros_like(scores, dtype=np.float32)
        for t in reversed(range(0, len(scores))):
            cum_r = scores[t] + self.gamma * cum_r
            discounted[t] = cum_r
        return discounted
    
    def save_model(self, model_name: str = None):
        """Save the current model in the 'models' folder found under root."""
        if self.model_v == 0: return  # Unversioned models aren't saved/loaded
        self.model.save(f"models/dql/{model_name if model_name else f'model_{self.model_v}'}")
    
    def load_model(self, model_name: str = None):
        """Load the model, return boolean indicating if model loaded successfully or not."""
        if self.model_v == 0: return False  # Unversioned models aren't saved/loaded
        if not model_name: model_name = f"model_{self.model_v}"
        try:
            self.model = tf.keras.models.load_model(f"models/dql/{model_name}")
            self.model.summary()
            return True
        except OSError:
            return False
