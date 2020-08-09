"""
base.py

The base agent, which should be inherited by the other agents.
"""
from warnings import warn


class Agent:
    __slots__ = {
        'training', 'last_score', 'tag'
    }
    
    def __init__(self,
                 training: bool = False,
                 tag: str = 'base'):
        """
        Initialise of base agent which carries the common parameters shared by all agents.
        
        :param training: Boolean indicating if the agent is training or not
        :param tag: Unique tag identifying the agent class
        """
        self.training: bool = training  # Indicates if agent is training or not
        self.last_score = None  # Previous score of the game, parsed from messenger
        self.tag: str = tag  # Identifying tag denoting the type of agent
    
    def __str__(self):
        return f"Agent()"
    
    def __call__(self, games):
        """
        Call the agent to determine the next best action given a certain game state.
        
        :param games: List of games, each in a certain state
        :return: Action, which is either 0 (straight), 1 (left), or 2 (right)
        """
        raise NotImplementedError
    
    def reset(self, n_envs, sample_game):
        """Reset the agent to prepare for new evaluation."""
        self.last_score = [0] * n_envs
    
    def train(self, duration, max_duration):
        """Train the agent."""
        warn("Nothing is trained")
        return None
    
    def save_model(self, model_name: str = None, epoch: int = None):
        """Save the current model. May be redundant for non-NN models."""
        warn("No model saved")
    
    def load_model(self, model_name: str = None, epoch: int = None):
        """Load the current model. May be redundant for non-NN models."""
        warn("No model loaded")
