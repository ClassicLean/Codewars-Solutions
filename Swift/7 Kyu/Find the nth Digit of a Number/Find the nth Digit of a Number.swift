func findDigit(_ num:Int, _ nth: Int) -> Int {
  let positiveNum = abs(num);
  guard nth > 0 else { return -1 }
  guard positiveNum > 0 else { return 0 }
  guard nth > 1 else { return positiveNum % 10 }
  return findDigit(positiveNum / 10, nth - 1)
}
