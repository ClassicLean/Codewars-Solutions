def high_and_low(numbers):
    newNums = [int(number) for number in numbers.split(' ')]
    return '%i %i' % (max(newNums), min(newNums))
