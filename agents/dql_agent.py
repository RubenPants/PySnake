"""
dql_agent.py

Agent which is trained using the Deep Q-Learning approach.
"""
from agents.base import Agent
from environment.messenger import M_RELATIVE


class DeepQLearning(Agent):
    """Agent that learns via the Deep Q-Learning algorithm."""
    
    __slots__ = {
        'm_tag', 'last_score',
        'refresh_rate', 'recalculate', 'path_remainder'
    }
    
    def __init__(self):
        super().__init__(M_RELATIVE)
        pass
    
    def __call__(self, msg):
        pass  # TODO
