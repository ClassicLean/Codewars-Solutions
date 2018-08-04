def get_sum(a,b):
    minimum = min(a, b)
    maximum = max(a, b)
    result = minimum;
    for counter in range(minimum, maximum):
        result += counter + 1
    return result
