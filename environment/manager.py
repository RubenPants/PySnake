"""
manager.py

Manager to train (in parallel) and evaluate the Agents.
"""
from agents.base import Agent


class Manager:
    def __init__(self, agent: Agent, n_envs: int = 1):
        self.agent = agent
        self.n_envs = n_envs
    
    def train(self):
        """Play the game while recording actions and rewards."""
        pass
    
    def evaluate(self):
        """Play the game and only record the final score."""
        pass
