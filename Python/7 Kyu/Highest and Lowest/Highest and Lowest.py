def high_and_low(numbers):
    newNums = list(map(lambda number: int(number), numbers.split()))
    return str(max(newNums)) + " " + str(min(newNums))
