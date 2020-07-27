"""
base.py

The base agent, which should be inherited by the other agents.
"""
from environment.messenger import MESSENGERS


class Agent:
    """Base Agent class."""
    
    __slots__ = {
        'n_envs', 'm_tag', 'last_score'
    }
    
    def __init__(self, n_envs: int = 1, message_tag=None):
        """Initialise the common parameters shared by all agents."""
        assert message_tag in MESSENGERS
        self.n_envs = n_envs  # Number of environments on which the agent is evaluated
        self.m_tag = message_tag  # Type of messages the agent wants to receive
        self.last_score = 0  # Previous score of the game, parsed from messenger
    
    def __call__(self, msg):
        """
        Call the agent to determine the next best action given a certain state (msg).
        
        :param msg: Message sent by own messenger
        :return: Action, which is either 0 (straight), 1 (left), or 2 (right)
        """
        raise NotImplementedError