import math

def find_next_square(sq):
    return math.pow(math.sqrt(sq) + 1, 2) if math.sqrt(sq) % 1 == 0 else -1
