func findSum(_ n: Int) -> Int {
  return (0...n).filter{($0 % 3) * ($0 % 5) == 0}.reduce(0, +)
}
