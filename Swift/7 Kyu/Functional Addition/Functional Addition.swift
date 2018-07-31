func add(_ n: Int) -> ((Int) -> Int) {
  return { $0 + n }
}
