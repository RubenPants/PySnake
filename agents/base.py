"""
base.py

The base agent, which should be inherited by the other agents.
"""


class Agent:
    def __init__(self, messenger):
        """TODO"""
        self.messenger = messenger
    
    def __call__(self, msg):
        """
        TODO
        
        :param msg: Message sent by own messenger
        :return: Action, which is either 0 (straight), 1 (left), or 2 (right)
        """
        pass  # TODO
