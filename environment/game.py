"""
game.py

Create a game instance which acts as a container for all the other elements (snake, apple).
"""
import arcade
import pyglet
import pymunk
from pymunk.pyglet_util import DrawOptions

from environment.snake import Snake
from utils.dictionary import DOWN, LEFT, RIGHT, UP
from utils.gen_int import IntegerGenerator


class Game:
    def __init__(self,
                 width=50,
                 height=50,
                 pixels=10):
        """
        Game object used as an environment to contain the snake entity.
        
        :param width: Width of the playing field
        :param height: Height of the playing field
        :param pixels: Number of pixels for each tile of the game
        """
        self.width = width
        self.height = height
        self.pixels = pixels
    
    def train(self, brain):
        """Training of a brain which happens without visualisations."""
        pass
    
    def manual(self):
        """Manually control the snake."""
        pass
    
    def visualise(self, brain=None):
        """Visualise the performance of a given brain."""
        # Regularly used constants
        width = self.width * self.pixels
        height = self.height * self.pixels
        
        # Initialise the pyglet instance
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
        
        # Create the Snake instance
        snake = Snake(game=self)
        snake_i = IntegerGenerator()  # Iterator for the snake segments
        
        def draw_snake(init=False):
            """Draw the snake."""
            
            def draw_segment(pos, i):
                """Draw square segment at position p."""
                target_body = pymunk.Body(body_type=pymunk.Body.KINEMATIC)
                target_body.position = (pos[0] * self.pixels, pos[1] * self.pixels)
                target_shape = pymunk.Poly.create_box(body=target_body, size=(self.pixels * 0.9, self.pixels * 0.9))
                target_shape.sensor = True
                target_shape.id = i
                target_shape.color = (0, 128, 0)
                space.add(target_body, target_shape)
            
            if init:
                for i, p in enumerate(reversed(snake.body)):
                    draw_segment(p, i=snake_i())
            else:
                draw_segment(snake.body[0], i=snake_i())
        
        # Initialise the snake
        draw_snake(init=True)
        
        @window.event
        def on_draw():
            window.clear()
            space.debug_draw(options=options)
        
        if not brain:
            @window.event
            def on_key_press(key, _):
                """Called whenever a key is pressed to record manual input."""
                if key == arcade.key.LEFT:
                    snake.direction = LEFT
                elif key == arcade.key.RIGHT:
                    snake.direction = RIGHT
                elif key == arcade.key.UP:
                    snake.direction = UP
                elif key == arcade.key.DOWN:
                    snake.direction = DOWN
        
        def update_method(dt):  # Input dt ignored
            # Remove the oldest added shape
            for shape in space.shapes:
                if hasattr(shape, 'id') and shape.id <= len(snake_i) - (snake.length - 1):
                    space.remove(shape.body, shape)
            
            # Proceed the snake
            snake.step()
            draw_snake()
            
            # Perform required action
            space.step(dt)
            
            # Query brain with new state if required
            if brain:
                raise NotImplementedError("Create implementation for the brain first")
        
        # Run the game
        pyglet.clock.schedule_interval(update_method, .1)
        pyglet.app.run()
