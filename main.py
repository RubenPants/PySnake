"""
main.py

TODO
"""
from agents.a_star import AStar
from environment.visualiser import live_visualisation

agent = AStar()

live_visualisation(agent=agent)
