"""
direction.py

Placeholders for all the possible directions, as well as some mutations on them.
"""

# Elementary directions
DOWN = (0, -1)
LEFT = (-1, 0)
RIGHT = (1, 0)
UP = (0, 1)

# Direction list, sorted clockwise
DIR = [UP, RIGHT, DOWN, LEFT]


def turn_right(d):
    """Get direction when turning to the right."""
    i = (DIR.index(d) + 1) % len(DIR)
    return DIR[i]


def turn_left(d):
    """Get direction when turning to the left."""
    i = (DIR.index(d) + (len(DIR) - 1)) % len(DIR)
    return DIR[i]
