func accum(_ s: String) -> String {
  var result: String = ""
  let letters = Array(s.characters)
  for counter in stride(from: 1, through: s.characters.count, by: 1){
    result += String(letters[counter - 1]).uppercased()
    result += String(repeating: String(letters[counter - 1]).lowercased(), count: counter - 1)
    if counter == s.characters.count { break }
    result += "-"
  }
  return result
}
