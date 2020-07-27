"""
main.py

TODO
"""
from agents.a_star import AStar
from environment.game import Game

game = Game()
game.visualise(AStar())
