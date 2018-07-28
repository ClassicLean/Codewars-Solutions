def square_digits(num):
    return int(''.join(str(int(digit) * int(digit)) for digit in list(str(num))))
