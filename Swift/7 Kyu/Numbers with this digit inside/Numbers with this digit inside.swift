func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
  let numArr = (1...x).map{String($0)}.filter{$0.contains(String(d))}
  guard numArr.count > 0 else { return [0,0,0] }

  let numSum = numArr.map{Int($0)!}.reduce(0, +)
  let numProd = numArr.map{Int($0)!}.reduce(1, *)
  var result: [Int64] = []

  result.append(Int64(numArr.count))
  result.append(Int64(numSum))
  result.append(Int64(numProd))

  return result
}
