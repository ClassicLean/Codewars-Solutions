def disemvowel(string):
    return ''.join(list(filter(lambda letter: letter not in 'aeiouAEIOU', string)))
