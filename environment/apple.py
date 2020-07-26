"""
apple.py

TODO
"""
from random import randrange

from utils.pos import Pos


class Apple:
    def __init__(self, game):
        """Random initialisation of the apple object."""
        self.game = game
        self.pos = None
        self.new_location()
    
    def new_location(self):
        """Get random free location in the game."""
        self.pos = None
        while not self.pos or self.pos in self.game.snake.body:
            self.pos = Pos(x=randrange(1, self.game.width - 1),
                           y=randrange(1, self.game.height - 1))
