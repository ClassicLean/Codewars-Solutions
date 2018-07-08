func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
  var result = 0
  for counter in start...end{
    if Array(String(counter)).contains("5") { continue }
    result += 1
  }
  return result
}
