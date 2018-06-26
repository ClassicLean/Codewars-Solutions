func stringy(_ size: Int) -> String {
  return (0..<size).map{ $0 & 1 == 1 ? "0" : "1" }.joined()
}
