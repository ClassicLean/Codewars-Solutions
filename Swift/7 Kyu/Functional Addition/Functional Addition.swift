func add(_ n: Int) -> ((Int) -> Int) {
  return { (number: Int) -> Int in
    return n + number }
}
