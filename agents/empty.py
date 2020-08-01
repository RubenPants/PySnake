"""
empty.py

Empty agent, only going straight.
"""
from agents.base import Agent


class Empty(Agent):
    __slots__ = {
        'training', 'm_tag', 'last_score',
    }
    
    def __init__(self):
        super().__init__()  # Dummy messenger
    
    def __call__(self, _):
        """Always drives straight."""
        return [0]
