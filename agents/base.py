"""
base.py

The base agent, which should be inherited by the other agents.
"""
import warnings


class Agent:
    """Base Agent class."""
    
    __slots__ = {
        'training', 'last_score'
    }
    
    def __init__(self, training: bool = False):
        """Initialise the common parameters shared by all agents."""
        self.training: bool = training  # Indicates if agent is training or not
        self.last_score = None  # Previous score of the game, parsed from messenger
        
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
        self.last_score = [0] * n_envs
    
    def train(self, duration, max_duration):
        warnings.warn("Nothing is trained")
        return None
    
    def save_model(self, model_name: str = None):
        """Save the current model. May be redundant for non-NN models."""
        warnings.warn("No model saved")
    
    def load_model(self, model_name: str = None):
        """Load the current model. May be redundant for non-NN models."""
        warnings.warn("No model loaded")
