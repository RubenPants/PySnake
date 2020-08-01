"""
manager.py

Manager to train (in parallel) and evaluate the Agents.
"""
from tqdm import tqdm

from agents.base import Agent
from environment.game import Game


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
    
    def train_batch(self, iterations: int = 1000):
        for i in range(iterations):
            print(f"==> Training iteration {i + 1}")
            scores = self.train()
            print(min(scores), "-", sum(scores) / len(scores), "-", max(scores))  # TODO: Remove!
    
    def train(self):
        """Play the game while recording actions and rewards."""
        self.agent.training = True
        
        # Create all the games
        games = []
        for _ in range(self.n_envs): games.append(Game())
        
        # Reset the agent
        self.agent.reset(n_envs=self.n_envs, sample_game=games[0])
        
        # Evaluate the agent on the different games
        duration = [0, ] * self.n_envs  # First iteration gets duration 0
        finished = [False, ] * self.n_envs
        while not all(finished) and max(duration) < self.max_steps:
            # Get the actions for the current states
            actions = self.agent(games)
            
            # Go over each game and progress by one
            for i, (g, a, f) in enumerate(zip(games, actions, finished)):
                if not f:
                    # Progress the game with one step
                    finished[i] = not g.step(a=a)
                    
                    # Progress duration of game
                    duration[i] += 1
        
        # Train the model before returning the scores
        self.agent.train(duration)
        
        # Return the final scores of each game
        return [g.score for g in games]
    
    def evaluate(self):
        """Play the game and only record the final score."""
        self.agent.training = False
        
        # Create all the games
        games = []
        for _ in range(self.n_envs): games.append(Game())
        
        # Reset the agent
        self.agent.reset(n_envs=self.n_envs, sample_game=games[0])
        
        # Evaluate the agent on the different games
        step = 0
        finished = [False, ] * self.n_envs
        progress = tqdm()
        while not all(finished) and step < self.max_steps:
            progress.update()
            step += 1
            
            # Get the actions for the current states
            actions = self.agent(games=games)
            
            # Go over each game and progress by one
            for i, (g, a, f) in enumerate(zip(games, actions, finished)):
                if not f:
                    # Progress the game with one step
                    finished[i] = not g.step(a=a)
        progress.close()
        
        # Return the final scores of each game
        return [g.score for g in games]
