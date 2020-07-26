"""
snake.py

TODO
"""
from random import choice, randrange

from utils.dictionary import DIR
from utils.pos import Pos


class Snake:
    def __init__(self, game, length_init=3):
        """Random initialisation of the snake object."""
        self.body: list = []  # List of sorted positions to represent the snake (head to tail)
        self.direction: tuple = None  # Direction to which the snake is heading
        self.game = game  # Game object
        self.length: int = 0
        self.length_init = length_init
        
        # Create new random instance of the snake
        self.reset()
    
    def reset(self):
        """Reset all the class' parameters."""
        self.direction = choice(DIR)  # Random initial direction
        pos = Pos(x=randrange(2, self.game.width - 2), y=randrange(2, self.game.height - 2))
        self.body = [pos]
        self.length = self.length_init
        
        # Initial snake has length of 3
        for _ in range(self.length - 1): self.step(eat=True)
    
    def step(self, eat=False):
        """
        Step in the current direction.
        
        :param eat: Eats apple, hence extends by one
        """
        # Add new position for the head
        self.body.insert(0, Pos(t=self.direction) + self.body[0])
        
        # Nothing eaten, remove last segment from tail
        if not eat: self.body = self.body[:-1]
