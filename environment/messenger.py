"""
messenger.py

Create messages as interaction between agent and environment.
"""
from environment.transformers import transformFirstPerson
from utils.exceptions import MessengerException

M_APPLE = 'apple'
M_BOARD = 'board'
M_BODY = 'body'
M_DATA = 'data'
M_DIM = 'dimensions'
M_DIR = 'direction'
M_RAW = 'raw'
M_RELATIVE = 'relative'
M_SCORE = 'score'
MESSENGERS = [M_RAW, M_RELATIVE, M_DATA]


def create_message(tag, game):
    if tag == M_RAW: return get_raw(game)
    if tag == M_RELATIVE: return get_relative(game)
    if tag == M_DATA: return get_data(game)
    raise MessengerException("Messenger type not supported")


def get_raw(game):
    msg = {
        M_BOARD: game.board.tolist(),
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg


def get_relative(game):
    msg = {
        M_BOARD: transformFirstPerson(board=game.board,
                                      head_pos=game.snake.body[0],
                                      head_dir=game.snake.direction).tolist(),
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg


def get_data(game):
    msg = {
        M_APPLE: game.apple.pos,
        M_BODY:  game.snake.body,
        M_DIR:   game.snake.direction,
        M_DIM:   (game.width, game.height),
        M_SCORE: game.score,
    }
    return msg
