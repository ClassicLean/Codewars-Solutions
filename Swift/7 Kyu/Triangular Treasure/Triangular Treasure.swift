func triangular(_ n: Int) -> Int{
  var result = 0
  if n < 1 { return 0 }
  for counter in 1...n { result += counter }
  return result
}
