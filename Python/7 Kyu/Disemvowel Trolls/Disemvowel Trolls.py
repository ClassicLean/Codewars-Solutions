def disemvowel(string):
    return string.translate(str.maketrans('', '', 'aeiouAEIOU'))
