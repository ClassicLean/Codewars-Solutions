def DNA_strand(dna):
    dnaArr = list(dna)
    result = ""
    for letter in dnaArr:
      if letter == "A":
          result += "T"
      elif letter == "T":
          result += "A"
      elif letter == "C":
          result += "G"
      elif letter == "G":
          result += "C"
    return result
