"""
random.py

Random agent, choose one of the three possible actions at random.
"""
from random import choice

from agents.base import Agent


class Random(Agent):
    __slots__ = {
        'training', 'tag', 'last_score',
    }
    
    def __init__(self):
        super().__init__(tag='random')  # Dummy messenger
    
    def __str__(self):
        return "Random()"
    
    def __call__(self, _):
        """Always drives straight."""
        return choice([[0], [1], [2]])
