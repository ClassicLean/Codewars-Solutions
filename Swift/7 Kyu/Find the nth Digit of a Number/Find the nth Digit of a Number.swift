func findDigit(_ num:Int, _ nth: Int) -> Int {
  var numArray = String(abs(num)).flatMap{Int(String($0))}
  if nth > numArray.count{
    return 0
  }
  if nth < 1{
    return -1
  }
  numArray.reverse();
  return numArray[nth - 1]
}
