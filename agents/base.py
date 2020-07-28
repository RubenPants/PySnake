"""
base.py

The base agent, which should be inherited by the other agents.
"""
import warnings

from environment.messenger import MESSENGERS


class Agent:
    """Base Agent class."""
    
    __slots__ = {
        'training', 'm_tag', 'last_score'
    }
    
    def __init__(self, message_tag: str = None, training: bool = False):
        """Initialise the common parameters shared by all agents."""
        assert message_tag in MESSENGERS
        self.training: bool = training  # Indicates if agent is training or not
        self.m_tag = message_tag  # Type of messages the agent wants to receive
        self.last_score = None  # Previous score of the game, parsed from messenger
    
    def __call__(self, msg):
        """
        Call the agent to determine the next best action given a certain state (msg).
        
        :param msg: Message sent by own messenger
        :return: Action, which is either 0 (straight), 1 (left), or 2 (right)
        """
        raise NotImplementedError
    
    def reset(self, n_envs, sample_msg):
        self.last_score = [0] * n_envs
    
    def train(self, duration):
        warnings.warn("Nothing is trained")
    
    def save_model(self, model_name: str = None):
        """Save the current model. May be redundant for non-NN models."""
        warnings.warn("No model saved")
    
    def load_model(self, model_name: str = None):
        """Load the current model. May be redundant for non-NN models."""
        warnings.warn("No model loaded")
