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
        """TODO"""
        assert message_tag in MESSENGERS
        self.m_tag = message_tag  # Type of messages the agent wants to receive
        self.last_score = 0  # Previous score of the game, parsed from messenger
    
    def __call__(self, msg):
        """
        TODO
        
        :param msg: Message sent by own messenger
        :return: Action, which is either 0 (straight), 1 (left), or 2 (right)
        """
        pass  # TODO
