import math

def is_square(n):
    return True if n > -1 and math.ceil(math.sqrt(n))  == int(math.sqrt(n)) else False
