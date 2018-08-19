func countArare(_ n: Int) -> String {
  let one = "anane"
  if n == 1 {
    return one
  }
  else if n & 1 != 1 {
    return (0..<(n / 2)).map{ _ in "adak" }.joined(separator: " ")
  }
  else {
    return (0..<((n - 1) / 2)).map{ _ in "adak" }.joined(separator: " ")  + " " + one
  }
}
