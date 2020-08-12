"""
manager.py

Manager to train and evaluate the Agents.
"""
import json
from time import time

import tensorflow as tf
from tqdm import tqdm

from environment.game import Game


class Manager:
    __slots__ = {
        'agent', 'n_envs', 'max_steps',
    }
    
    def __init__(self,
                 agent,
                 n_envs: int = 1024,
                 max_steps: int = 1000,
                 ):
        """
        Initialise the manager, which manages training and evaluation of the agents.
        
        :param agent: Agent to train/evaluate
        :param n_envs: Number of environments on which the agent is trained in parallel
        :param max_steps: Maximum number of steps during each training/evaluation session
        """
        self.agent = agent
        self.n_envs = n_envs
        self.max_steps = max_steps
    
    def train(self):
        """
        Play the game while recording actions and rewards, which are used afterwards to train the agent model on.
        
        :return: Scores (per game), durations (pg), snake-length (pg), training loss
        """
        # Create all the games
        games = []
        for _ in range(self.n_envs): games.append(Game())
        
        # Reset the agent
        self.agent.training = True
        self.agent.reset(n_envs=self.n_envs, sample_game=games[0])
        
        # Evaluate the agent on the different games
        duration = [0, ] * self.n_envs  # First iteration gets duration 0
        finished = [False, ] * self.n_envs
        while not all(finished) and max(duration) < self.max_steps:
            # Get the actions for the current states
            actions = self.agent(games)
            uses_tuple = isinstance(actions[0], tuple)
            
            # Go over each game and progress by one
            for i, (g, a, f) in enumerate(zip(games, actions, finished)):
                if not f:
                    # Progress the game with one step
                    finished[i] = not g.step(a=a, uses_tuple=uses_tuple)
                    
                    # Progress duration of game
                    duration[i] += 1
        
        # Train the model before returning the scores
        loss = self.agent.train(duration=duration, max_duration=self.max_steps)
        
        # Return the final scores of each game
        return [g.score for g in games], duration, [len(g.snake.body) for g in games], loss
    
    def train_scheme(self, scheme_path):
        """Train the model under a certain training scheme, write statistics to TensorBoard each training session."""
        # Load in the scheme
        with open(scheme_path, 'r') as f:
            schemes = json.load(f)
        
        # Initialise the TensorBoard writer
        writer = tf.summary.create_file_writer(
                f"./logs/{self.agent.tag}_{self.agent.model_t}_{self.agent.model_v}_{time()}")
        
        # Iterate over all the schemes
        epoch = 0
        for scheme in schemes:
            self.set_scheme(path=scheme_path, scheme=scheme)
            self.print_configuration(iterations=scheme['iterations'])
            
            # Run
            pbar = tqdm(range(scheme['iterations']), desc=f"avg_score={-1}, avg_duration={0}")
            for _ in pbar:
                scores, durations, snake_length, loss = self.train()
                
                # Write summary of session to TensorBoard
                write_to_tensorboard(writer=writer,
                                     iteration=epoch,
                                     scores=scores,
                                     durations=durations,
                                     length=snake_length,
                                     loss=loss)
                pbar.set_description(f"avg score={round(sum(scores) / len(scores), 2)}, "
                                     f"avg duration={round(sum(durations) / len(durations), 2)}")
                epoch += 1
                
                # Save agent model every 5 epochs
                if epoch % 5 == 0: self.agent.save_model(epoch=epoch)
    
    def set_scheme(self, path, scheme):
        """Update the manager and agent's parameters to be conform with the scheme."""
        # Update game environment
        self.n_envs = scheme['n_env']
        self.max_steps = scheme['steps']
        
        # Update the agent
        if 'dql' in path:
            self.agent.lr = scheme['lr']
            self.agent.gamma = scheme['gamma']
            self.agent.eps_decay = scheme['eps_decay']
            self.agent.eps_max = scheme['eps_max']
            self.agent.eps_min = scheme['eps_min']
            self.agent.a_star_ratio = scheme['a_star_ratio']
        else:
            raise NotImplementedError
    
    def print_configuration(self, iterations):
        """Print the current configuration of the manager and the agent."""
        agent_str = str(self.agent)
        agent_str = agent_str.replace('\n', '\n\t')
        print(f"\n\nTRAINING SCHEME:\n"
              f"\titerations={iterations}\n"
              f"\tnumber of environments={self.n_envs}\n"
              f"\tgame steps={self.max_steps}\n"
              f"\tagent={agent_str}\n")
    
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


def write_to_tensorboard(writer, iteration, scores, durations, length, loss):
    """Write the data of a single training session to TensorBoard."""
    # Sort each of the lists
    scores = sorted(scores)
    durations = sorted(durations)
    length = sorted(length)
    
    # Reformat data and write to TensorBoard
    with writer.as_default():
        tf.summary.scalar(name='snake size percentile/25th', data=length[int(.25 * len(length))], step=iteration)
        tf.summary.scalar(name='snake size percentile/50th', data=length[int(.5 * len(length))], step=iteration)
        tf.summary.scalar(name='snake size percentile/75th', data=length[int(.75 * len(length))], step=iteration)
        
        tf.summary.scalar(name='score average', data=sum(scores) / len(scores), step=iteration)
        
        tf.summary.scalar(name='score percentile/25th', data=scores[int(.25 * len(scores))], step=iteration)
        tf.summary.scalar(name='score percentile/50th', data=scores[int(.5 * len(scores))], step=iteration)
        tf.summary.scalar(name='score percentile/75th', data=scores[int(.75 * len(scores))], step=iteration)
        
        tf.summary.scalar(name='duration percentile/25th', data=durations[int(.25 * len(durations))], step=iteration)
        tf.summary.scalar(name='duration percentile/50th', data=durations[int(.5 * len(durations))], step=iteration)
        tf.summary.scalar(name='duration percentile/75th', data=durations[int(.75 * len(durations))], step=iteration)
        
        tf.summary.scalar(name='training loss', data=loss, step=iteration)
