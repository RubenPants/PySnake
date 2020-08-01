"""
random.py

Random agent, choose one of the three possible actions at random.
"""
from random import choice

from agents.base import Agent
from environment.messenger import M_RAW


class Random(Agent):
    __slots__ = {
        'training', 'm_tag', 'last_score',
    }
    
    def __init__(self):
        super().__init__(message_tag=M_RAW)  # Dummy messenger
    
    def __call__(self, _):
        """Always drives straight."""
        return choice([[0], [1], [2]])
