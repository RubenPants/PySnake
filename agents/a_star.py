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
        'n_envs', 'm_tag', 'last_score',
        'refresh_rate', 'recalculate', 'path_remainder'
    }
    
    def __init__(self, n_envs: int = 1, refresh_rate=10):
        super().__init__(n_envs=n_envs, message_tag=M_DATA)
        self.refresh_rate = refresh_rate  # Number of steps before recalculation
        self.recalculate = [0] * self.n_envs  # Timer until recalculation
        self.path_remainder = [[], ] * self.n_envs
    
    def __call__(self, msgs):
        """
        Define the path
        
        :param msgs: List of messages sent by requested messenger
        :return: List of actions, where each action is either 0 (straight), 1 (left), or 2 (right)
        """
        assert len(msgs) == self.n_envs
        actions = []
        for i in range(self.n_envs):
            # Parse message of requested game
            msg = msgs[i]
            
            # Previous apple was eaten, reset
            if msg[M_SCORE] > self.last_score:
                self.last_score = msg[M_SCORE]
                self.recalculate[i] = 0
            
            # Recalculate a new path
            body = msg[M_BODY]
            start = body[0]
            if self.recalculate[i] <= 0:
                self.recalculate[i] = self.refresh_rate
                goal = msg[M_APPLE].pos
                dim = msg[M_DIM]
                try:
                    self.path_remainder[i] = a_star(start=start, goal=goal, dim=dim, body=body)
                except ValueError:  # If no path is found, get random neighbour
                    neighbours = get_neighbours(pos=start, goal=goal, dim=dim, body=body)
                    if len(neighbours) == 0: return 0  # We dead..
                    min_n = min(neighbours)
                    self.path_remainder[i] = [min_n[1]]
                    self.recalculate[i] = 0
            
            # Translate next position to an action and return this action
            next_pos = self.path_remainder[i][0]
            action = 0  # Straight by default
            if (start + turn_left(msg[M_DIR])) == next_pos: action = 1  # Turn left
            if (start + turn_right(msg[M_DIR])) == next_pos: action = 2  # Turn right
            
            # Progress one step internally
            self.path_remainder[i] = self.path_remainder[i][1:]
            self.recalculate[i] -= 1
            actions.append(action)
        
        assert len(actions) == self.n_envs
        return actions


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
