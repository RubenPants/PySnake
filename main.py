"""
main.py

TODO
"""
from agents.dql_agent import DeepQLearning
from environment.manager import Manager
from models.handler import MLP, CNN
from visualising.visualiser import live_visualisation

agent = DeepQLearning(model_type=MLP, model_v=1)
# agent = AStar()
manager = Manager(n_envs=512, agent=agent, max_steps=1000)
# manager.train_scheme(scheme_path="schemes/dql.json")
manager.train_continuous(iterations=100)

live_visualisation(agent=agent)

# scores = manager.evaluate()
# print(min(scores), "-", sum(scores) / len(scores), "-", max(scores))
