func nbDig(_ n: Int, _ d: Int) -> Int {
  return ((0...n).map{String($0 * $0)}).joined(separator: "").components(separatedBy: String(d)).count - 1
}
