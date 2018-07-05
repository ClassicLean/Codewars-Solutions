func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  return array.sorted()[0...1].reduce(0,+)
}
