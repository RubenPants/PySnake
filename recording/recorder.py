"""
recorder.py

Record a game of snake (manual inputs) and store the data under the 'recording/data/' folder.
"""
import json
from glob import glob

import numpy as np

from agents.a_star import AStar
from agents.random import Random
from environment.game import Game
from environment.messenger import M_BOARD, M_RAW, M_RELATIVE


def record_a_star():
    """Record a game where the agent is controlled by the A* algorithm."""
    # Necessary entities
    agent = AStar()
    game = Game(msg_tag=agent.m_tag)
    
    # Containers for the recordings
    states_relative_mem = []
    states_raw_mem = []
    actions_mem = []
    d_scores_mem = []
    
    # Reset the agent
    agent.reset(n_envs=1, sample_msg=game.get_msg())
    score = 0
    
    # Get the initial state
    state = game.get_msg()
    
    # Run the game
    finished = False
    duration = 0
    while not finished:
        duration += 1
        action = agent([state])[0]
        
        # Store current state
        states_relative_mem.append([game.get_msg(tag=M_RELATIVE)[M_BOARD]])
        states_raw_mem.append([game.get_msg(tag=M_RAW)[M_BOARD]])
        actions_mem.append([action])
        
        # Progress the game
        finished = not game.step(a=action)
        
        # Update the score
        d_scores_mem.append([game.score - score])
        score = game.score
        
        # Update the state
        state = game.get_msg()
    
    # Store all the memorised data
    save_recording(
            pre="a_star",
            s_raw=states_raw_mem,
            s_relative=states_relative_mem,
            actions=actions_mem,
            scores=d_scores_mem,
            duration=[duration],
    )


def record_random():
    """Record a game where the agent is controlled by a random algorithm."""
    # Necessary entities
    agent = Random()
    game = Game(msg_tag=agent.m_tag)
    
    # Containers for the recordings
    states_relative_mem = []
    states_raw_mem = []
    actions_mem = []
    d_scores_mem = []
    
    # Reset the agent
    agent.reset(n_envs=1, sample_msg=game.get_msg())
    score = 0
    
    # Get the initial state
    state = game.get_msg()
    
    # Run the game
    finished = False
    duration = 0
    while not finished:
        duration += 1
        action = agent([state])[0]
        
        # Store current state
        states_relative_mem.append([game.get_msg(tag=M_RELATIVE)[M_BOARD]])
        states_raw_mem.append([game.get_msg(tag=M_RAW)[M_BOARD]])
        actions_mem.append([action])
        
        # Progress the game
        finished = not game.step(a=action)
        
        # Update the score
        d_scores_mem.append([game.score - score])
        score = game.score
        
        # Update the state
        state = game.get_msg()
    
    # Store all the memorised data
    save_recording(
            pre="random",
            s_raw=states_raw_mem,
            s_relative=states_relative_mem,
            actions=actions_mem,
            scores=d_scores_mem,
            duration=[duration],
    )


def show_recording(path):
    """Show a certain recording."""
    # Fetch data
    data = load_recording(path=path)
    states = data['states_raw_mem']
    actions = data['actions_mem']
    scores = data['d_scores_mem']
    duration = data['duration'][0]
    
    # Show the current board
    def print_board(state):
        """Stolen from game's show_board()."""
        width = len(state[0])
        height = len(state)
        for row in reversed(range(width)):
            for col in range(height):
                if state[col, row] == -1:
                    print(" # ", end="")
                elif state[col, row] == 1:
                    print(" o ", end="")
                else:
                    print("   ", end="")
            print()
        print("---" * width)
    
    # Iterate over the simulation
    step = 0
    while step < duration:
        print_board(states[step, 0])
        a = actions[step][0]
        print(f"-> With action '{'straight' if a == 0 else 'left' if a == 1 else 'right'}'")
        print(f"-> Leads to score {scores[step][0]}")
        input("--> Press enter to continue")
        step += 1


def record_manual():
    """Record a game where the agent is manually controlled."""
    raise NotImplementedError  # TODO: Implement


def save_recording(pre, actions, s_raw, s_relative, scores, duration):
    """Add the recording to the list of recordings."""
    data = {
        'states_raw_mem':      s_raw,
        'states_relative_mem': s_relative,
        'actions_mem':         actions,
        'd_scores_mem':        scores,
        'duration':            duration,
    }
    n = len(glob("recording/data/a_star*"))
    with open(f'recording/data/{pre}_{n + 1}.json', 'w') as f:
        json.dump(data, f, indent=2)
    print(f"Saved record {n + 1}")


def load_recording(path):
    """Unfold the requested recording to the states, actions, and delta scores."""
    with open(path, 'r') as f:
        data = json.load(f)
        data['states_raw_mem'] = np.asarray(data['states_raw_mem'])
        data['states_relative_mem'] = np.asarray(data['states_relative_mem'])
    return data


def get_all_recordings():
    recordings = []
    
    # Load all A* recordings
    recordings += glob("recording/data/a_star*")
    
    # Load all manual recordings
    recordings += glob("recording/data/random*")
    
    return recordings
