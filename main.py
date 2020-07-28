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

agent = DeepQLearning(model_type=MLP, model_v=1)
# agent = AStar()
game = Game(msg_tag=agent.m_tag)
manager = Manager(n_envs=128, agent=agent, max_steps=100)
# manager.train()
# manager.train_batch(iterations=5)
# for _ in range(90): record_a_star()
# agent.pre_train()

live_visualisation(agent=agent)
# manager.train_batch(iterations=10)

# scores = manager.evaluate()
# print(min(scores),"-",sum(scores)/len(scores),"-",max(scores))
