"""
visualiser.py

Creates visualisations of an agent's run in a gaming environment.
"""
import arcade
import pyglet
import pymunk
from pymunk.pyglet_util import DrawOptions

from agents.base import Agent
from agents.empty import Empty
from environment.game import Game
from utils.direction import DOWN, LEFT, RIGHT, UP
from utils.gen_int import IntegerGenerator


def live_visualisation(agent: Agent = Empty(), game: Game = None):
    """Visualise the performance of the given agent."""
    if not game: game = Game(msg_tag=agent.m_tag)
    
    # Regularly used constants
    width = game.width * game.pixels
    height = game.height * game.pixels
    
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
    
    # Label for the score
    label = pyglet.text.Label(f'{game.score}',
                              font_size=12,
                              color=(100, 100, 100, 100),
                              x=window.width - 30, y=window.height - 30,
                              anchor_x='center', anchor_y='center')
    
    # Draw a square in the environment
    def draw_segment(pos, i=None, color=(0, 128, 0)):
        """Draw square segment at position p."""
        target_body = pymunk.Body(body_type=pymunk.Body.KINEMATIC)
        target_body.position = (pos[0] * game.pixels + game.pixels / 2, pos[1] * game.pixels + game.pixels / 2)
        target_shape = pymunk.Poly.create_box(body=target_body, size=(game.pixels * 0.9, game.pixels * 0.9))
        target_shape.sensor = True
        if i is not None: target_shape.id = i
        target_shape.color = color
        space.add(target_body, target_shape)
    
    # Draw the walls
    for i in range(game.height):
        draw_segment((0, i), color=(0, 0, 0))
        draw_segment((game.width - 1, i), color=(0, 0, 0))
    for i in range(game.width):
        draw_segment((i, 0), color=(0, 0, 0))
        draw_segment((i, game.height - 1), color=(0, 0, 0))
    
    # Draw the apple
    draw_segment(game.apple.pos, i=-1, color=(128, 0, 0))
    
    # Create the Snake instance
    snake_i = IntegerGenerator()  # Iterator for the snake segments
    agent.reset(n_envs=1, sample_msg=game.get_msg())
    
    def draw_snake(init=False):
        """Draw the snake."""
        if init:
            for i, p in enumerate(reversed(game.snake.body)): draw_segment(p, i=snake_i())
        else:
            draw_segment(game.snake.body[0], i=snake_i())
    
    # Initialise the snake
    draw_snake(init=True)
    
    @window.event
    def on_draw():
        window.clear()
        label.text = str(game.score)
        label.draw()
        space.debug_draw(options=options)
    
    # Make game keyboard sensitive
    if type(agent) == Empty:
        @window.event
        def on_key_press(key, _):
            """Called whenever a key is pressed to record manual input."""
            if key == arcade.key.LEFT and game.snake.direction != RIGHT:
                game.snake.direction = LEFT
            elif key == arcade.key.RIGHT and game.snake.direction != LEFT:
                game.snake.direction = RIGHT
            elif key == arcade.key.UP and game.snake.direction != DOWN:
                game.snake.direction = UP
            elif key == arcade.key.DOWN and game.snake.direction != UP:
                game.snake.direction = DOWN
    
    def update_method(dt):
        """Update the game environment."""
        # Query brain to get action for current state
        a = agent([game.get_msg()])[0]
        
        # Progress the game
        score_pre = game.score
        alive = game.step(a=a)
        if not alive: pyglet.app.exit()
        score_post = game.score
        eaten = score_pre != score_post
        
        # Remove the oldest added shape
        for shape in space.shapes:
            if hasattr(shape, 'id') and shape.id <= len(snake_i) - (game.snake.length - 1):
                if eaten:
                    space.remove(shape.body, shape)
                    draw_segment(game.apple.pos, i=-1, color=(128, 0, 0))
                elif shape.id >= 0:
                    space.remove(shape.body, shape)
        
        # Proceed the snake
        draw_snake()
        
        # Perform required action
        space.step(dt)
    
    # Run the game
    pyglet.clock.schedule_interval(update_method, .1)
    pyglet.app.run()
