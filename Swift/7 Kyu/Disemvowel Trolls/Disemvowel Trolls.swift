func disemvowel(_ s: String) -> String {
  var result: String = ""
  let letters = Array(s.characters)
  for counter in stride(from: 1, through: s.characters.count, by: 1) {
    switch String(letters[counter - 1]).lowercased(){
      case "a", "e", "i", "o", "u" : continue
      default : result += String(letters[counter - 1])
    }
  }
  return result
}
