"""
base.py

The base agent, which should be inherited by the other agents.
"""
from environment.messenger import MESSENGERS


class Agent:
    """Base Agent class."""
    
    __slots__ = {
        'm_tag', 'last_score'
    }
    
    def __init__(self, message_tag=None):
        """Initialise the common parameters shared by all agents."""
        assert message_tag in MESSENGERS
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
