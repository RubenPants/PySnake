"""
feedforward.py

A simple agent that takes its inputs and maps those directly to its outputs. The received inputs are in first person.
"""
from agents.base import Agent
from environment.messenger import M_RELATIVE


class FeedForward(Agent):
    __slots__ = {
        'm_tag', 'last_score',
        'refresh_rate', 'recalculate', 'path_remainder'
    }
    
    def __init__(self, refresh_rate=10):
        super().__init__(M_RELATIVE)
    
    def __call__(self, msg):
        pass  # TODO
