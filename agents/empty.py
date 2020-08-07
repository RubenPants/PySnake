"""
empty.py

Empty agent, only going straight.
"""
from agents.base import Agent


class Empty(Agent):
    __slots__ = {
        'training', 'tag', 'last_score',
    }
    
    def __init__(self):
        super().__init__(tag='empty')  # Dummy messenger
        
    def __str__(self):
        return "Empty()"
    
    def __call__(self, _):
        """Always drives straight."""
        return [0]
