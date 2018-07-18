def find_short(s):
    return min(list(map(lambda word: len(word), s.split())))
