"""
pos.py

Two dimensional position class.
"""


class Pos:
    def __init__(self, x=0, y=0, t=None):
        if t:  # Tuple instantiation
            self.x: int = t[0]
            self.y: int = t[1]
        else:  # Variable instantiation
            self.x: int = x
            self.y: int = y
    
    def __str__(self):
        return f"Pos({self.x}, {self.y})"
    
    def __repr__(self):
        return str(self)
    
    def __hash__(self):
        return hash((self.x, self.y))
    
    def __getitem__(self, i):
        if i == 0:
            return self.x
        elif i == 1:
            return self.y
        raise IndexError()
    
    def __setitem__(self, i: int, value: float):
        if i == 0:
            self.x = value
        elif i == 1:
            self.y = value
        else:
            raise IndexError()
    
    def __iter__(self):
        yield self.x
        yield self.y
    
    def __len__(self):
        return 2
    
    def __eq__(self, other):
        if hasattr(other, "__getitem__") and len(other) == 2:
            return self.x == other[0] and self.y == other[1]
        else:
            return False
    
    def __lt__(self, other):
        if hasattr(other, "__getitem__") and len(other) == 2:
            if self.x < other[0]:
                return True
            elif (self.x == other[0]) and (self.y < other[1]):
                return True
            else:
                return False
        else:
            raise TypeError(f"Not possible to use '<' operator on objects {type(self)} and {type(other)}")
    
    def __gt__(self, other):
        if hasattr(other, "__getitem__") and len(other) == 2:
            if self.x > other[0]:
                return True
            elif (self.x == other[0]) and (self.y > other[1]):
                return True
            else:
                return False
        else:
            raise TypeError(f"Not possible to use '>' operator on objects {type(self)} and {type(other)}")
    
    def __ne__(self, other):
        if hasattr(other, "__getitem__") and len(other) == 2:
            return self.x != other[0] or self.y != other[1]
        else:
            return True
    
    def __add__(self, other):
        """Add two positions together."""
        if type(other) in [list, tuple, self.__class__]:
            return Pos(self.x + other[0], self.y + other[1])
        else:
            raise TypeError("Invalid type added to Pos")
    
    def __sub__(self, other):
        """Subtract the other position from the current position."""
        if type(other) in [list, tuple, self.__class__]:
            return Pos(self.x - other[0], self.y - other[1])
        else:
            raise TypeError("Invalid type added to Pos")
