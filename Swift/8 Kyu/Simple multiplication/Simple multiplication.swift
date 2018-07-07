func simpleMultiplication(_ num: Int) -> Int {
  return num * (num & 1 == 1 ? 9 : 8)
}
