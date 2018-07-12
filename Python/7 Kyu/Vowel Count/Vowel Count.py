def getCount(inputStr):
    num_vowels = 0

    for letter in inputStr:
        if letter.lower() in ('a', 'e', 'i', 'o', 'u'):
            num_vowels += 1

    return num_vowels
