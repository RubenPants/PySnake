"""
game.py

Create a game instance which acts as a container for all the other elements (snake, apple).
"""
from random import randrange

import numpy as np

from environment.snake import Snake
from utils.direction import DOWN, LEFT, RIGHT, turn_left, turn_right
from utils.exceptions import PositionException
from utils.pos import Pos


class Game:
    __slots__ = {
        'width', 'height', 'dim', 'pixels', 'score', 'steps',
        'snake',
        'apple', 'apple_separate',
        'board'
    }
    
    def __init__(self,
                 width=11,
                 height=11,
                 pixels=20,
                 apple_separate=True,
                 ):
        """
        Game object used as an environment to contain the snake entity.
        
        :param width: Width of the playing field
        :param height: Height of the playing field
        :param pixels: Number of pixels for each tile of the game
        :param apple_separate: Give the apple its own board
        """
        self.width = width if width % 2 == 1 else width + 1  # Always odd
        self.height = height if height % 2 == 1 else height + 1  # Always odd
        self.dim = (self.width, self.height)
        self.pixels = pixels
        self.score = 0
        self.steps = 0
        
        # Initialise the snake
        self.snake = Snake(game=self)
        
        # Initialise the apple
        self.apple = None
        self.apple_separate: bool = apple_separate
        self.set_apple_pos()
        
        # Initialise the board
        self.board = self.create_board()
    
    # ----------------------------------------------------> MAIN <---------------------------------------------------- #
    
    def step(self, a, uses_tuple: bool = False):
        """
        Update the game with the corresponding action.
        
        :param a: Action to perform
        :param uses_tuple: Actions are in tuple representation (action, randomised)
        :return: Boolean indicating if game is still running
        """
        random_a = False
        if uses_tuple:
            random_a = a[1]
            a = a[0]
        assert a in [0, 1, 2]  # Straight, left, right
        if a == 1: self.snake.direction = turn_left(self.snake.direction)
        if a == 2: self.snake.direction = turn_right(self.snake.direction)
        
        # Update snake position
        try:
            if self.snake.step(apple=self.apple):
                self.set_apple_pos()
                self.score += .5  # Reward for eating apple
            
            # Update the board
            self.update_board()
            return True
        except PositionException:
            self.score -= .2 if random_a else 1  # Punish for hitting into a wall, less punishment if random action
            return False
    
    def reset(self):
        """Reset the game environment."""
        self.score = 0
        self.steps = 0
        self.clear_board()
        self.snake = Snake(game=self)
        self.set_apple_pos()
    
    # ----------------------------------------------------> BOARD <--------------------------------------------------- #
    
    def create_board(self):
        """Create the initial board, which consists out of two layers: (snake+wall) and apple."""
        layers = 2 if self.apple_separate else 1
        board = np.zeros((self.width, self.height, layers))
        
        # Add walls
        board[0, :, 0] = np.ones((self.width,)) * -1
        board[-1, :, 0] = np.ones((self.width,)) * -1
        board[:, 0, 0] = np.ones((self.height,)) * -1
        board[:, -1, 0] = np.ones((self.height,)) * -1
        
        # Add snake and apple
        for p in self.snake.body: board[p.x, p.y, 0] = -1
        board[self.apple.x, self.apple.y, 1 if self.apple_separate else 0] = 1
        return board
    
    def clear_board(self):
        """Clear the snake positions from the board."""
        self.board[1:-1, 1:-1, :] *= 0
    
    def update_board(self):
        """Update the position of the snake and apple."""
        self.clear_board()
        for p in self.snake.body: self.board[p.x, p.y, 0] = -1
        self.board[self.apple.x, self.apple.y, 1 if self.apple_separate else 0] = 1
    
    def show_board(self):
        """Print out the board."""
        for row in reversed(range(self.width)):
            for col in range(self.height):
                if self.board[col, row, 0] == -1:
                    print(" # ", end="")
                elif self.board[col, row, 0] == 1:
                    print(" o ", end="")
                else:
                    print("   ", end="")
            print()
        print("---" * self.width)
    
    def get_board_relative(self):
        """Transform the board position to first person viewing."""
        # Get board dimensions
        width = len(self.board)
        height = len(self.board[0])
        
        # Center board
        delta_width = int(width / 2) - self.snake.body[0][0]
        delta_height = int(height / 2) - self.snake.body[0][1]
        board = np.roll(self.board, delta_width, axis=0)
        board = np.roll(board, delta_height, axis=1)
        
        # Rotate board
        if self.snake.direction == RIGHT: board = np.rot90(board, 1)
        if self.snake.direction == DOWN: board = np.rot90(board, 2)
        if self.snake.direction == LEFT: board = np.rot90(board, 3)
        return board  # shape = (height, width, depth)
    
    # ----------------------------------------------------> APPLE <--------------------------------------------------- #
    
    def set_apple_pos(self):
        """Get random free location in the game."""
        self.apple = None
        while not self.apple or self.apple in self.snake.body:
            self.apple = Pos(x=randrange(1, self.width - 1),
                             y=randrange(1, self.height - 1))
