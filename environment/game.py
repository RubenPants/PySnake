"""
game.py

Create a game instance which acts as a container for all the other elements (snake, apple).
"""
import numpy as np

from environment.apple import Apple
from environment.snake import Snake
from utils.direction import turn_left, turn_right


class Game:
    def __init__(self,
                 width=20,
                 height=20,
                 pixels=20):
        """
        Game object used as an environment to contain the snake entity.
        
        :param width: Width of the playing field
        :param height: Height of the playing field
        :param pixels: Number of pixels for each tile of the game
        """
        self.width = width
        self.height = height
        self.pixels = pixels
        self.score = 0
        self.steps = 0
        
        # Initialise the snake
        self.snake = Snake(game=self)
        
        # Initialise the apple
        self.apple = Apple(game=self)
        
        # Initialise the board
        self.board = self.create_board()
    
    # ----------------------------------------------------> MAIN <---------------------------------------------------- #
    
    def step(self, a):
        """Update the game with the corresponding action."""
        assert a in [0, 1, 2]  # Straight, left, right
        if a == 1:
            self.snake.direction = turn_left(self.snake.direction)
        elif a == 2:
            self.snake.direction = turn_right(self.snake.direction)
        
        # Update snake position
        eaten = self.snake.step(apple=self.apple.pos)
        if eaten:
            self.apple.new_location()
            self.score += 1
        
        # Update the board
        self.update_board()
        return eaten
    
    def reset(self):
        """Reset the game environment."""
        self.score = 0
        self.steps = 0
        self.clear_board()
        self.snake = Snake(game=self)
        self.apple = Apple(game=self)
    
    # ----------------------------------------------------> BOARD <--------------------------------------------------- #
    
    def create_board(self):
        """Create the initial board."""
        board = np.zeros((self.width, self.height))
        
        # Add walls
        board[0, :] = np.ones((self.width,)) * -1
        board[-1, :] = np.ones((self.width,)) * -1
        board[:, 0] = np.ones((self.height,)) * -1
        board[:, -1] = np.ones((self.height,)) * -1
        
        # Add snake and apple
        for p in self.snake.body: board[p.x, p.y] = -1
        board[self.apple.pos.x, self.apple.pos.y] = 1
        return board
    
    def clear_board(self):
        """Clear the snake positions from the board."""
        self.board[1:-1, 1:-1] *= 0
    
    def update_board(self):
        """Update the position of the snake and apple."""
        self.clear_board()
        for p in self.snake.body: self.board[p.x, p.y] = -1
        self.board[self.apple.pos.x, self.apple.pos.y] = 1
    
    def show_board(self):
        """Print out the board."""
        for row in reversed(range(self.width)):
            for col in range(self.height):
                if self.board[col, row] == -1:
                    print(" # ", end="")
                elif self.board[col, row] == 1:
                    print(" o ", end="")
                else:
                    print("   ", end="")
            print()
        print("---" * self.width)
