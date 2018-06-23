func toLeetSpeak(_ s : String) -> String {
  var result: String = ""
  for char in s.characters.indices{
    switch s[char]{
      case "A" :
        result += "@"
      case "B" :
        result += "8"
      case "C" :
        result += "("
      case "D" :
        result += "D"
      case "E" :
        result += "3"
      case "F" :
        result += "F"
      case "G" :
        result += "6"
      case "H" :
        result += "#"
      case "I" :
        result += "!"
      case "J" :
        result += "J"
      case "K" :
        result += "K"
      case "L" :
        result += "1"
      case "M" :
        result += "M"
      case "N" :
        result += "N"
      case "O" :
        result += "0"
      case "P" :
        result += "P"
      case "Q" :
        result += "Q"
      case "R" :
        result += "R"
      case "S" :
        result += "$"
      case "T" :
        result += "7"
      case "U" :
        result += "U"
      case "V" :
        result += "V"
      case "W" :
        result += "W"
      case "X" :
        result += "X"
      case "Y" :
        result += "Y"
      case "Z" :
        result += "2"
      default:
        result += " "
    }
  }
  return result
}
