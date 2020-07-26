# Elementary directions
DOWN = (0, -1)
LEFT = (-1, 0)
RIGHT = (1, 0)
UP = (0, 1)

# Direction list, sorted clockwise
DIR = [UP, RIGHT, DOWN, LEFT]


def turn_right(d):
    i = (DIR.index(d) + 1) % len(DIR)
    return DIR[i]


def turn_left(d):
    i = (DIR.index(d) + (len(DIR) - 1)) % len(DIR)
    return DIR[i]


def go_straight(d):
    return d
