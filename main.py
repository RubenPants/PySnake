"""
main.py

TODO
"""
from agents.a_star import AStar
from environment.game import Game
from environment.transformers import transformFirstPerson

game = Game()
# game.show_board()
# test = transformFirstPerson(game.board, game.snake.body[0], game.snake.direction)
# game.show_board()
game.visualise(AStar())
