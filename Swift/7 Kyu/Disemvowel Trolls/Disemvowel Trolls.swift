func disemvowel(_ s: String) -> String {
  let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  return String(s.characters.filter{!vowels.contains($0)})
}
