"""
manager.py

Manager to train (in parallel) and evaluate the Agents.
"""
import json
from random import random

from tqdm import tqdm

from environment.game import Game


class Manager:
    def __init__(self, agent, n_envs: int = 1, max_steps: int = None):
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
        self.agent.train(duration=duration, max_duration=self.max_steps)
        
        # Return the final scores of each game
        return [g.score for g in games]
    
    def train_scheme(self, scheme_path):
        """Train the model under a certain training scheme."""
        # Load in the scheme
        with open(scheme_path, 'r') as f:
            scheme = json.load(f)
        
        for s in scheme:
            # Update agent
            if 'dql' in scheme_path:
                self.agent.lr = s['lr']
                self.agent.gamma = s['gamma']
                self.agent.eps_decay = s['eps_decay']
                self.agent.eps_max = s['eps_max']
                self.agent.eps_min = s['eps_min']
            else:
                raise NotImplementedError
            
            # Update game environment
            self.n_envs = s['n_env']
            self.max_steps = s['steps']
            
            # Run
            agent_str = str(self.agent)
            agent_str = agent_str.replace('\n', '\n\t')
            print(f"\n\nTRAINING SCHEME:\n"
                  f"\titerations={s['iterations']}\n"
                  f"\tnumber of environments={s['n_env']}\n"
                  f"\tgame steps={s['steps']}\n"
                  f"\tagent={agent_str}\n")
            data = [-1, -1, -1]
            pbar = tqdm(range(s['iterations']), desc=f"25th={data[0]}, 50th={data[1]}, 75th={data[2]}")
            for _ in pbar:
                scores = sorted(self.train())
                data[0] = scores[int(len(scores) * .25)]
                data[1] = scores[int(len(scores) * .5)]
                data[2] = scores[int(len(scores) * .75)]
                pbar.set_description(f"25th={data[0]}, 50th={data[1]}, 75th={data[2]}")
            
            # TODO: Perhaps make summary for scheme segment?
            pass
    
    def train_continuous(self, iterations: int = 100):
        """
        Continuously train the algorithm on the same games. Instead of starting each training session out fresh, the
        training continues where the previous training session ended. Before continuing, every of the games is put back
        one time-step. Games that have no valid option (i.e. either of the actions would result in the game to end) are
        replaced by a new game.
        
        :param iterations: Number of training sessions
        """
        self.agent.training = True
        
        # Create all the games
        games = []
        for _ in range(self.n_envs): games.append(Game())
        
        # Train the agent for each of the training sessions
        pbar = tqdm(range(iterations), desc=f"min={-1}, avg={-1}, max={-1}, avg_size={3}")
        for _ in pbar:
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
            self.agent.train(duration=duration, max_duration=self.max_steps)
            
            # Display the final scores of each game
            scores = sorted([g.score for g in games])
            avg_size = sum([len(g.snake.body) for g in games]) / len(games)
            pbar.set_description(f"min={round(min(scores), 2)}, "
                                 f"avg={round(sum(scores) / len(scores), 2)}, "
                                 f"max={round(max(scores), 2)}, "
                                 f"avg_size={round(avg_size, 2)}")
            
            # Undo each of the games, reset if no valid action left
            for g in games:
                if random() < 0.1:
                    g.reset()
                else:
                    if not g.undo(): g.reset()
    
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
