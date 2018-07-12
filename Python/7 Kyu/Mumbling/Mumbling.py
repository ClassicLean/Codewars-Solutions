def accum(s):
    result = ""
    for counter, letter in enumerate(s):
        result += letter * (counter + 1) + "-"
    return result[:-1].title(); 
