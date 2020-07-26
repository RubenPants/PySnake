"""
snake.py

Entity representing the snake object within the game.
"""
from random import choice, randrange

from utils.direction import DIR
from utils.exceptions import PositionException
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
        pos = Pos(x=randrange(self.length_init * 2, self.game.width - self.length_init * 2),
                  y=randrange(self.length_init * 2, self.game.height - self.length_init * 2))
        self.body = [pos]
        self.length = 1
        
        # Initial snake has length of 3
        for _ in range(self.length_init - 1): self.step(apple=Pos(t=self.direction) + self.body[0])
    
    def step(self, apple=None):
        """
        Step in the current direction.
        
        :param apple: Position of the apple
        """
        # Add new position for the head
        self.body.insert(0, Pos(t=self.direction) + self.body[0])
        
        # Check if valid new position
        if self.body[0] in self.body[1:] or \
                self.body[0].x in [0, self.game.width - 1] or \
                self.body[0].y in [0, self.game.height - 1]:
            raise PositionException("Invalid snake position")
        
        # Enlarge snake if apple is eaten
        if apple and self.body[0] == apple:
            self.length += 1
            return True
        else:
            self.body = self.body[:-1]
            return False
