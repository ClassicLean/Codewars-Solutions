def getCount(inputStr):
    return sum(1 for letter in inputStr if letter.lower() in "aeiou")
