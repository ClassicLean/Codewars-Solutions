func stringy(_ size: Int) -> String {
  var result: String = ""
  for counter in 1...size{
    if counter & 1 == 1 { result += "1" }
    else { result += "0" }
  }
  return result
}
