"""
a_star.py

Adaptation of the A* algorithm.
"""
from math import sqrt

from agents.base import Agent
from environment.messenger import M_APPLE, M_BODY, M_DATA, M_DIM, M_DIR, M_SCORE
from utils.direction import DIR, turn_left, turn_right


class AStar(Agent):
    """Adaptation of the A* algorithm."""
    
    __slots__ = {
        'm_tag', 'last_score',
        'refresh_rate', 'recalculate', 'path_remainder'
    }
    
    def __init__(self, refresh_rate=10):
        super().__init__(M_DATA)
        self.refresh_rate = refresh_rate  # Number of steps before recalculation
        self.recalculate = 0  # Timer until recalculation
        self.path_remainder = []
    
    def __call__(self, msg):
        """
        Define the path
        
        :param msg: Message sent by own messenger
        :return: Action, which is either 0 (straight), 1 (left), or 2 (right)
        """
        # Previous apple was eaten, reset
        if msg[M_SCORE] > self.last_score:
            self.last_score = msg[M_SCORE]
            self.recalculate = 0
        
        # Recalculate a new path
        body = msg[M_BODY]
        start = body[0]
        if self.recalculate <= 0:
            self.recalculate = self.refresh_rate
            goal = msg[M_APPLE].pos
            dim = msg[M_DIM]
            self.path_remainder = a_star(start=start, goal=goal, dim=dim, body=body)
        
        # Translate next position to an action and return this action
        next_pos = self.path_remainder[0]
        action = 0  # Straight by default
        if (start + turn_left(msg[M_DIR])) == next_pos: action = 1  # Turn left
        if (start + turn_right(msg[M_DIR])) == next_pos: action = 2  # Turn right
        
        # Progress one step internally
        self.path_remainder = self.path_remainder[1:]
        self.recalculate -= 1
        return action


def a_star(start, goal, dim, body):
    """The A* algorithm: https://en.wikipedia.org/wiki/A*_search_algorithm"""
    # Set of searched positions
    searched = set()
    
    # Set of positions to be searched
    exploring = {(distance(start, goal), start), }
    
    # Keep a dictionary indicating which positions came from which
    cameFrom = dict()
    
    # Perform the calculation
    found = False
    while not found:
        # Get the position closest to the goal that needs to be explored
        temp = min(exploring)
        dist, pos = temp
        if dist == 0:
            found = True
            continue
        searched.add(pos)
        exploring.remove(temp)
        
        # Fetch all its neighbours
        neighbours = get_neighbours(pos=pos, goal=goal, dim=dim, body=body)
        for n in neighbours:
            if n[1] in searched: continue  # Dead positions aren't searched again
            if n[1] not in cameFrom: cameFrom[n[1]] = pos
            exploring.add(n)
    
    # Reconstruct the path
    path = [goal]
    while cameFrom[path[0]] != start:
        path.insert(0, cameFrom[path[0]])
    return path


def get_neighbours(pos, goal, dim, body):
    neighbours = set()
    for d in DIR:
        p = pos + d
        if isValid(p, dim, body):
            neighbours.add((distance(p, goal), p))
    return neighbours


def distance(p1, p2):
    """Calculates the distance between two points."""
    return sqrt((p1.x - p2.x) ** 2 + (p1.y - p2.y) ** 2)


def isValid(pos, dim, body):
    """Check if given position is a valid position."""
    if not (0 < pos.x < dim[0] - 1): return False
    if not (0 < pos.y < dim[1] - 1): return False
    return pos not in body
