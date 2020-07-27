"""
main.py

TODO
"""
from agents.a_star import AStar
from environment.game import Game
from environment.manager import Manager
from environment.messenger import M_DATA
from environment.visualiser import live_visualisation

agent = AStar()
game = Game(msg_tag=M_DATA)
manager = Manager(n_envs=100, agent=agent)
manager.evaluate()

# live_visualisation(agent=agent, game=game)
