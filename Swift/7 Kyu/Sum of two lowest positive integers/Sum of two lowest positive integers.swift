func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  var newArray = array
  let firstMin = Int(array.min()!)
  var firstMinIndex: Int?
  for counter in (1...array.count){
    if array[counter - 1] == firstMin {
        firstMinIndex = counter - 1
    }
  }
  newArray.remove(at: Int(firstMinIndex!))
  let secondMin = Int(newArray.min()!)
  return firstMin + secondMin
}
