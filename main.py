"""
main.py

TODO
"""
from agents.dql_agent import DeepQLearning
from environment.game import Game
from environment.manager import Manager
from models.handler import CNN, MLP, RNN
from recording.recorder import record_a_star, record_random, show_recording
from visualising.visualiser import live_visualisation

agent = DeepQLearning(model_type=MLP, model_v=1)
# agent = AStar()
game = Game(msg_tag=agent.m_tag)
manager = Manager(n_envs=256, agent=agent, max_steps=100)

for _ in range(100): record_a_star()
for _ in range(100): record_random()
agent.pre_train()
# show_recording("recording/data/a_star_1.json")

# manager.train()
manager.train_batch(iterations=100)

# live_visualisation(agent=agent)
# manager.train_batch(iterations=10)

scores = manager.evaluate()
# print(min(scores),"-",sum(scores)/len(scores),"-",max(scores))
