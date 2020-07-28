"""
main.py

TODO
"""
from agents.a_star import AStar
from agents.dql_agent import DeepQLearning
from environment.game import Game
from environment.manager import Manager
from environment.messenger import M_DATA
from environment.visualiser import live_visualisation
from models.handler import MLP, CNN, RNN

agent = DeepQLearning(model_type=MLP)
# agent = AStar()
game = Game(msg_tag=M_DATA)
manager = Manager(n_envs=32, agent=agent, max_steps=100)
# scores = manager.evaluate()
# print(min(scores),"-",sum(scores)/len(scores),"-",max(scores))
scores = manager.train_batch()
# live_visualisation(agent=agent, game=game)
