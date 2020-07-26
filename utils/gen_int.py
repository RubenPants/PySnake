"""
gen_int.py

Generator to create integers.
"""


class IntegerGenerator:
    def __init__(self):
        self.i: int = -1  # First call results in a 0
    
    def __call__(self):
        """Iterate"""
        self.i += 1
        return self.i
    
    def __len__(self):
        """Current count"""
        return self.i
