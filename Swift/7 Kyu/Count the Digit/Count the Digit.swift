func nbDig(_ n: Int, _ d: Int) -> Int {
  return (0...n).flatMap{ String($0 * $0).filter{ $0 == Character(String(d)) } }.count
}
