"""
manager.py

Manager to train (in parallel) and evaluate the Agents.
"""
from tqdm import tqdm

from agents.base import Agent
from environment.game import Game
from utils.exceptions import PositionException


class Manager:
    def __init__(self, agent: Agent, n_envs: int = 1, max_steps: int = None):
        """
        Initialise the manager, which manages training and evaluation of the agents.
        
        :param agent: Agent to train/evaluate
        :param n_envs: Number of environments on which the agent is trained in parallel
        """
        self.agent = agent
        self.n_envs = n_envs
        self.max_steps = max_steps if max_steps else float("inf")
    
    def train(self):
        """Play the game while recording actions and rewards."""
        pass
    
    def evaluate(self):
        """Play the game and only record the final score."""
        # Create all the games
        games = []
        for _ in range(self.n_envs): games.append(Game(self.agent.m_tag))
        
        # Reset the agent
        self.agent.reset(self.n_envs, games[0].get_msg())
        
        # Fetch the initial states of the games
        states = []
        for i in range(self.n_envs): states.append(games[i].get_msg())
        
        # Evaluate the agent on the different games
        step = 0
        finished = [False, ] * self.n_envs
        progress = tqdm()
        while not all(finished) and step < self.max_steps:
            progress.update()
            step += 1
            
            # Get the actions for the current states
            actions = self.agent(states)
            
            # Go over each game and progress by one
            for i, (g, a, f) in enumerate(zip(games, actions, finished)):
                if not f:
                    try:
                        # Progress the game with one step
                        g.step(a=a)
                        
                        # Update the state
                        states[i] = g.get_msg()
                    except PositionException:
                        finished[i] = True
        
        # Return the final scores of each game
        return [g.score for g in games]
