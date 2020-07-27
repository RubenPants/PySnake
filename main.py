"""
main.py

TODO
"""
from agents.a_star import AStar
from agents.dql_agent import DeepQLearning
from environment.game import Game
from environment.manager import Manager
from environment.messenger import M_DATA
from models.handler import MLP, CNN, RNN

agent = DeepQLearning(model_type=MLP)
game = Game(msg_tag=M_DATA)
manager = Manager(n_envs=10, agent=agent, max_steps=100)
scores = manager.evaluate()
print("Minimum score:", min(scores))
print("Average score:", int(sum(scores) / len(scores)))
print("Maximum score:", max(scores))
# live_visualisation(agent=agent, game=game)
