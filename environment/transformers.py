"""
transformers.py

Transform the received data to a customized version.
"""
import numpy as np

from utils.direction import DOWN, LEFT, RIGHT


def transformFirstPerson(board, head_pos, head_dir):
    """
    Transform the board position to first person viewing.
    
    :param board: The current board to be transformed
    :param head_pos: Snake's head position
    :param head_dir: Snake's direction
    :return: First person viewed board
    """
    # Get board dimensions
    width = len(board)
    height = len(board[0])
    
    # Center board
    delta_width = int(width / 2) - head_pos[0]
    delta_height = int(height / 2) - head_pos[1]
    board = np.roll(board, delta_width, axis=0)
    board = np.roll(board, delta_height, axis=1)
    
    # Rotate board
    if head_dir == RIGHT: board = np.rot90(board, 1)
    if head_dir == DOWN: board = np.rot90(board, 2)
    if head_dir == LEFT: board = np.rot90(board, 3)
    return board


def transformFlat(board):
    """
    Flatten the board to a 1-dimensional array.
    
    :param board: The current board to be flattened
    :return: Flattened board
    """
    return board.flatten()
