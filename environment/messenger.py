"""
messenger.py

Create messages as interaction between agent and environment.
"""
from environment.transformers import transformFirstPerson, transformFlat

M_APPLE = 'apple'
M_BOARD = 'board'
M_BODY = 'body'
M_DATA = 'data'
M_FLAT = 'flat'
M_RAW = 'raw'
M_RELATIVE = 'relative'
M_SCORE = 'score'
MESSENGERS = [M_RAW, M_RELATIVE, M_FLAT, M_DATA]


class MessageVisualRaw:
    """Messenger that sends the raw visual information (current board position)."""
    
    def __init__(self, game):
        self.game = game
    
    def __call__(self):
        msg = {
            M_SCORE: self.game.score,
            M_BOARD: self.game.board
        }
        return msg


class MessageVisualRelative:
    """Sends the first person visualisation (relative) of the snake in its environment."""
    
    def __init__(self, game):
        self.game = game
    
    def __call__(self):
        msg = {
            M_SCORE: self.game.score,
            M_BOARD: transformFirstPerson(self.game.board,
                                          self.game.snake.body[0],
                                          self.game.snake.direction)
        }
        return msg


class MessageFlat:
    """Sends the flattened out board representation."""
    
    def __init__(self, game):
        self.game = game
    
    def __call__(self):
        msg = {
            M_SCORE: self.game.score,
            M_BOARD: transformFlat(self.game.board)
        }
        return msg


class MessageData:
    """Sends game state in its raw data format."""
    
    def __init__(self, game):
        self.game = game
    
    def __call__(self):
        msg = {
            M_SCORE: self.game.score,
            M_APPLE: self.game.apple,
            M_BODY:  self.game.snake.body
        }
        return msg
