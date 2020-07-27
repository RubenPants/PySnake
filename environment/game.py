"""
game.py

Create a game instance which acts as a container for all the other elements (snake, apple).
"""
import arcade
import numpy as np
import pyglet
import pymunk
from pymunk.pyglet_util import DrawOptions

from agents.base import Agent
from agents.empty import Empty
from environment.apple import Apple
from environment.messenger import Messenger
from environment.snake import Snake
from utils.direction import DOWN, LEFT, RIGHT, turn_left, turn_right, UP
from utils.gen_int import IntegerGenerator


class Game:
    def __init__(self,
                 width=30,
                 height=30,
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
        self.step = 0
        
        # Initialise the snake
        self.snake = Snake(game=self)
        
        # Initialise the apple
        self.apple = Apple(game=self)
        
        # Initialise the board
        self.board = self.create_board()
    
    def reset(self):
        """Reset the game environment."""
        self.score = 0
        self.step = 0
        self.clear_board()
        self.snake = Snake(game=self)
        self.apple = Apple(game=self)
    
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
        self.board[1:-1, 1:-1] = np.zeros((self.width - 2, self.height - 2))
    
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
    
    def update(self, a):
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
        
        return eaten
    
    def train(self, brain):
        """Training of a brain which happens without visualisations at maximum speed."""
        pass  # TODO: Create
    
    def visualise(self, brain: Agent = Empty(), manual: bool = True):
        """Visualise the performance of a given brain."""
        # Regularly used constants
        width = self.width * self.pixels
        height = self.height * self.pixels
        
        # Initialise the Pyglet instance
        window = pyglet.window.Window(width,
                                      height,
                                      "PySnake",
                                      resizable=False,
                                      visible=True)
        window.set_location(100, 100)
        pyglet.gl.glClearColor(1, 1, 1, 1)
        
        # Draw the environment
        space = pymunk.Space()
        options = DrawOptions()
        
        # Draw a square in the environment
        def draw_segment(pos, i=None, color=(0, 128, 0)):
            """Draw square segment at position p."""
            target_body = pymunk.Body(body_type=pymunk.Body.KINEMATIC)
            target_body.position = (pos[0] * self.pixels + self.pixels / 2, pos[1] * self.pixels + self.pixels / 2)
            target_shape = pymunk.Poly.create_box(body=target_body, size=(self.pixels * 0.9, self.pixels * 0.9))
            target_shape.sensor = True
            if i is not None: target_shape.id = i
            target_shape.color = color
            space.add(target_body, target_shape)
        
        # Draw the walls
        for i in range(self.height):
            draw_segment((0, i), color=(0, 0, 0))
            draw_segment((self.width - 1, i), color=(0, 0, 0))
        for i in range(self.width):
            draw_segment((i, 0), color=(0, 0, 0))
            draw_segment((i, self.height - 1), color=(0, 0, 0))
        
        # Draw the apple
        draw_segment(self.apple.pos, i=-1, color=(128, 0, 0))
        
        # Create the Snake instance
        snake_i = IntegerGenerator()  # Iterator for the snake segments
        
        def draw_snake(init=False):
            """Draw the snake."""
            if init:
                for i, p in enumerate(reversed(self.snake.body)): draw_segment(p, i=snake_i())
            else:
                draw_segment(self.snake.body[0], i=snake_i())
        
        # Initialise the snake
        draw_snake(init=True)
        
        @window.event
        def on_draw():
            window.clear()
            space.debug_draw(options=options)
        
        # Prepare the brain
        messenger = Messenger(self)
        
        # Make game keyboard sensitive
        if manual:
            @window.event
            def on_key_press(key, _):
                """Called whenever a key is pressed to record manual input."""
                if key == arcade.key.LEFT and self.snake.direction != RIGHT:
                    self.snake.direction = LEFT
                elif key == arcade.key.RIGHT and self.snake.direction != LEFT:
                    self.snake.direction = RIGHT
                elif key == arcade.key.UP and self.snake.direction != DOWN:
                    self.snake.direction = UP
                elif key == arcade.key.DOWN and self.snake.direction != UP:
                    self.snake.direction = DOWN
        
        def update_method(dt):
            """Update the game environment."""
            # Query brain to get action for current state
            a = brain(messenger(brain.m_tag))
            
            # Progress the game
            eaten = self.update(a=a)
            
            # Remove the oldest added shape
            for shape in space.shapes:
                if hasattr(shape, 'id') and shape.id <= len(snake_i) - (self.snake.length - 1):
                    if eaten:
                        space.remove(shape.body, shape)
                        draw_segment(self.apple.pos, i=-1, color=(128, 0, 0))
                    elif shape.id >= 0:
                        space.remove(shape.body, shape)
            
            # Proceed the snake
            draw_snake()
            
            # Perform required action
            space.step(dt)
        
        # Run the game
        pyglet.clock.schedule_interval(update_method, .05)
        pyglet.app.run()
