func countArare(_ n: Int) -> String {
  var pairs = Array(repeating: "adak", count: n / 2)
  if n & 1 == 1 { pairs.append("anane") }
  return pairs.joined(separator: " ")
}
