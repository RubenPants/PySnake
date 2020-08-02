"""
main.py

TODO
"""
from agents.dql_agent import DeepQLearning
from environment.manager import Manager
from models.handler import MLP
from visualising.visualiser import live_visualisation

agent = DeepQLearning(model_type=MLP, model_v=1)
# agent = AStar()
manager = Manager(n_envs=512, agent=agent, max_steps=100)

# for _ in range(10): record_a_star()
# for _ in range(10): record_random()
# agent.pre_train()
# show_recording("recording/data/a_star_1.json")

# manager.train()
# manager.train_batch(iterations=200)
manager.train_scheme(scheme_path="schemes/dql.json")

live_visualisation(agent=agent)
# manager.train_batch(iterations=10)

# scores = manager.evaluate()
# print(min(scores),"-",sum(scores)/len(scores),"-",max(scores))
