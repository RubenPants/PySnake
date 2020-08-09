"""
main.py

Run the main functionality.
"""
import argparse

from agents.a_star import AStar
from agents.dql_agent import DeepQLearning
from agents.empty import Empty
from environment.manager import Manager
from models.handler import CNN, MLP
from visualising.visualiser import live_visualisation

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--train', type=bool, default=False)
    parser.add_argument('--scheme', type=str, default="dql_1")
    parser.add_argument('--evaluate', type=bool, default=True)
    parser.add_argument('--visualise', type=bool, default=False)
    
    parser.add_argument('--agent_type', type=str, default='dql')
    parser.add_argument('--model_type', type=str, default='cnn')
    parser.add_argument('--model_version', type=int, default=0)
    args = parser.parse_args()
    
    # Go over all the options
    if args.agent_type == 'a_star':
        agent = AStar()
    elif args.agent_type == 'manual':
        agent = Empty()
    elif args.agent_type == 'dql':
        assert args.model_type in [MLP, CNN]
        agent = DeepQLearning(model_type=args.model_type,
                              model_v=args.model_version)
    else:
        raise Exception(f"Agent of type '{args.agent_type} not supported', "
                        f"choose from: 'a_star', 'manual', or 'dql'.")
    
    # Create manager instance
    manager = Manager(agent=agent)
    
    # Train if requested
    if args.train: manager.train_scheme(scheme_path=f"schemes/{args.scheme}.json")
    
    # Evaluate if requested
    if args.evaluate:
        scores = manager.evaluate()
        print(min(scores), "-", sum(scores) / len(scores), "-", max(scores))
    
    # Visualise if requested
    if args.visualise: live_visualisation(agent=agent)
