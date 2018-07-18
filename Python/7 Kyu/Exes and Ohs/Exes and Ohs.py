def xo(s):
    sArr = list(s)
    x = 0
    o = 0
    for letter in sArr:
        if letter.lower() == "x":
            x += 1
        elif letter.lower() == "o":
            o += 1
    return True if x == o or ( x == 0 and o == 0 ) else False
