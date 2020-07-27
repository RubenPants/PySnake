"""
messenger.py

Create messages as interaction between agent and environment.
"""
from environment.transformers import transformFirstPerson, transformFlat
from utils.exceptions import MessengerException

M_APPLE = 'apple'
M_BOARD = 'board'
M_BODY = 'body'
M_DATA = 'data'
M_DIM = 'dimensions'
M_DIR = 'direction'
M_FLAT = 'flat'
M_RAW = 'raw'
M_RELATIVE = 'relative'
M_SCORE = 'score'
MESSENGERS = [M_RAW, M_RELATIVE, M_FLAT, M_DATA]


class Messenger:
    """Base messenger class."""
    
    def __init__(self, game):
        self.game = game
    
    def __call__(self, tag):
        if tag == M_RAW: return get_raw(self.game)
        if tag == M_RELATIVE: return get_relative(self.game)
        if tag == M_FLAT: return get_flat(self.game)
        if tag == M_DATA: return get_data(self.game)
        raise MessengerException("Messenger type not supported")


def get_raw(game):
    msg = {
        M_BOARD: game.board,
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg


def get_relative(game):
    msg = {
        M_BOARD: transformFirstPerson(game.board, game.snake.body[0], game.snake.direction),
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg


def get_flat(game):
    msg = {
        M_BOARD: transformFlat(game.board),
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg


def get_data(game):
    msg = {
        M_APPLE: game.apple,
        M_BODY:  game.snake.body,
        M_DIR:   game.snake.direction,
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg
