from enum import Enum

class Color(Enum):
    red = 1
    green = 2
    blue = 3

print(Color.red)
print(Color(1))
print(color['red'])

class Color(Enum):
    red = 1
    green = 2
    blue = 3

[c for c in Color]
