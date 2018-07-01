func accum(_ s: String) -> String {
  return s.characters.enumerated().map{
    (counter, letter) -> String in
    return String(repeating: String(letter), count: counter + 1).capitalized
  }.joined(separator: "-")
}
