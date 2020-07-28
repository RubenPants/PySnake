"""
main.py

TODO
"""
from agents.dql_agent import DeepQLearning
from environment.game import Game
from environment.manager import Manager
from models.handler import CNN, MLP, RNN
from recording.recorder import record_a_star
from visualising.visualiser import live_visualisation

agent = DeepQLearning(model_type=MLP)
# agent = AStar()
game = Game(msg_tag=agent.m_tag)
manager = Manager(n_envs=128, agent=agent, max_steps=20)
# manager.train_batch(iterations=5)
# scores = manager.evaluate()
# print(min(scores),"-",sum(scores)/len(scores),"-",max(scores))
# live_visualisation()
# record_a_star()
