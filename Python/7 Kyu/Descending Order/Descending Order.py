def Descending_Order(num):
    strNum = list(str(num))
    return int(''.join(sorted([number for number in strNum], reverse = True)))
