"""
empty.py

Empty agent, only going straight.
"""
from agents.base import Agent
from environment.messenger import M_RAW


class Empty(Agent):
    """Adaptation of the A* algorithm."""
    
    __slots__ = {
        'm_tag', 'last_score',
    }
    
    def __init__(self):
        super().__init__(M_RAW)  # Dummy messenger
    
    def __call__(self, _):
        """Always drives straight."""
        return 0
