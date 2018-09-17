def is_isogram(string):
    return ''.join(sorted(set(string.lower()))) == ''.join(sorted(string.lower()))
