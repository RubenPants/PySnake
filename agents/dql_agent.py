"""
dql_agent.py

Agent which is trained using the Deep Q-Learning approach.
"""
import numpy as np

from agents.base import Agent
from environment.messenger import M_BOARD, M_FLAT, M_RELATIVE
from models.handler import CNN, create_model


class DeepQLearning(Agent):
    """Agent that learns via the Deep Q-Learning algorithm."""
    
    __slots__ = {
        'm_tag', 'last_score',
        'model', 'model_t', 'model_v', 'training'
    }
    
    def __init__(self, model_type, model_v: int = 0, training: bool = False):
        m_type = M_RELATIVE if model_type == CNN else M_FLAT
        super().__init__(m_type)
        self.model = None  # Policy used to query actions given a state
        self.model_t = model_type  # Type of policy used (mlp, cnn, rnn)
        self.model_v = model_v  # Version number of the model, 0 is non-versioned
        self.training = training  # Boolean indicating if model is training or not
    
    def __call__(self, msgs):
        """
        Define the 'most suitable action' (as defined by the policy) for each of the games.
        
        :param msgs: List of messages sent by requested messenger
        :return: List of actions, where each action is either 0 (straight), 1 (left), or 2 (right)
        """
        if self.model is None: raise Exception("Initialise first via 'reset'")
        
        if self.training:
            raise NotImplementedError
        else:
            return self.query(msgs=msgs)
    
    def reset(self, n_envs, sample_msg):
        super().reset(n_envs=n_envs, sample_msg=sample_msg)
        if not self.model: self.load_model(sample_msg[M_BOARD].shape)
    
    def query(self, msgs):
        """Query for actions, do not memorise seen states. Only used for evaluation."""
        # Fetch all the states from the given messages
        states = np.asarray([m[M_BOARD] for m in msgs])
        
        # Fetch the actions using the model
        predictions = self.model.predict(states)
        
        # Parse actions from predictions (choose most likely actions)
        return [np.argmax(p) for p in predictions]
    
    def load_model(self, input_dim):
        self.model = create_model(model_tag=self.model_t, input_dim=input_dim)
        self.model.summary()
