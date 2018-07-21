func nbDig(_ n: Int, _ d: Int) -> Int {
  return (0...n).map{ String($0 * $0).filter{ $0 == Character(String(d)) } }.flatMap{ $0 }.count
}
