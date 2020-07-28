"""
recorder.py

Record a game of snake (manual inputs) and store the data under the 'recording/data/' folder.
"""
import json
from glob import glob

from agents.a_star import AStar
from environment.game import Game
from environment.messenger import M_FLAT, M_RELATIVE


def record_a_star():
    """Record a game where the agent is controlled by the A* algorithm."""
    # Necessary entities
    agent = AStar()
    game = Game(msg_tag=agent.m_tag)
    
    # Containers for the recordings
    states_relative_mem = []
    states_flat_mem = []
    actions_mem = []
    d_scores_mem = []
    
    # Reset the agent
    agent.reset(n_envs=1, sample_msg=game.get_msg())
    score = 0
    
    # Get the initial state
    state = game.get_msg()
    
    # Run the game
    finished = False
    duration = -1
    while not finished:
        duration += 1
        action = agent([state])[0]
        
        # Store current state
        states_relative_mem.append(game.get_msg(tag=M_RELATIVE))
        states_flat_mem.append(game.get_msg(tag=M_FLAT))
        actions_mem.append(action)
        
        # Progress the game
        finished = not game.step(a=action)
        
        # Update the score
        d_scores_mem.append(game.score - score)
        score = game.score
        
        # Update the state
        state = game.get_msg()
    
    # Store all the memorised data
    save_recording(
            actions=actions_mem,
            s_relative=states_relative_mem,
            s_flat=states_flat_mem,
            scores=d_scores_mem,
            duration=duration,
    )


def record_manual():
    """Record a game where the agent is manually controlled."""
    raise NotImplementedError


def save_recording(actions, s_relative, s_flat, scores, duration):
    """Add the recording to the list of recordings."""
    data = {
        'actions_mem':         actions,
        'states_relative_mem': s_relative,
        'states_flat_mem':     s_flat,
        'd_scores_mem':        scores,
        'duration':            duration,
    }
    n = len(glob("recording/data/a_star*"))
    with open(f'recording/data/a_star_{n + 1}.json', 'w') as f:
        json.dump(data, f, indent=2, sort_keys=True)


def load_recording():
    """Unfold the requested recording to the states, actions, and delta scores."""
    pass  # TODO
