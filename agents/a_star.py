"""
a_star.py

Adaptation of the A* algorithm.
"""
from math import sqrt

from agents.base import Agent
from utils.direction import DIR, turn_left, turn_right


class AStar(Agent):
    """Adaptation of the A* algorithm."""
    
    __slots__ = {
        'training', 'last_score',
        'refresh_rate', 'recalculate', 'path_remainder'
    }
    
    def __init__(self, refresh_rate=10):
        super().__init__()
        self.refresh_rate = refresh_rate  # Number of steps before recalculation
        self.recalculate = None  # Timer until recalculation
        self.path_remainder = None
    
    def __call__(self, games):
        """
        Define the 'most suitable action' (as defined by the policy) for each of the games.
        
        :param games: List of games, each in a certain state
        :return: List of actions, where each action is either 0 (straight), 1 (left), or 2 (right)
        """
        if self.recalculate is None: raise Exception("Initialise first via 'reset'")
        
        # Loop over all the inputs to decide on each corresponding action
        actions = []
        for i in range(len(games)):
            # Parse message of requested game
            game = games[i]
            
            # Previous apple was eaten, reset
            if game.score > self.last_score[i]:
                self.last_score[i] = game.score
                self.recalculate[i] = 0
            
            # Recalculate a new path
            body = game.snake.body
            start = body[0]
            if self.recalculate[i] <= 0:
                self.recalculate[i] = self.refresh_rate
                try:
                    self.path_remainder[i] = a_star(start=start, goal=game.apple, dim=game.dim, body=body)
                except ValueError:  # If no path is found, get random neighbour
                    neighbours = get_neighbours(pos=start, goal=game.apple, dim=game.dim, body=body)
                    self.recalculate[i] = 0
                    if len(neighbours) == 0:  # We dead..
                        actions.append(0)
                        continue
                    min_n = min(neighbours)
                    self.path_remainder[i] = [min_n[1]]
            
            # Translate next position to an action and return this action
            if len(self.path_remainder[i]) == 0:  # We dead..
                actions.append(0)
                continue
            next_pos = self.path_remainder[i][0]
            action = 0  # Straight by default
            if (start + turn_left(game.snake.direction)) == next_pos: action = 1  # Turn left
            if (start + turn_right(game.snake.direction)) == next_pos: action = 2  # Turn right
            
            # Progress one step internally
            self.path_remainder[i] = self.path_remainder[i][1:]
            self.recalculate[i] -= 1
            actions.append(action)
        return actions
    
    def reset(self, n_envs, sample_game):
        super().reset(n_envs=n_envs, sample_game=sample_game)
        self.recalculate = [0] * n_envs
        self.path_remainder = [[], ] * n_envs


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
