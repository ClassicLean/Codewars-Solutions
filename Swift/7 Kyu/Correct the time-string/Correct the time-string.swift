func correct(_ timeString: String?) -> String? {
  let newTime = (timeString ?? "")
  if newTime.isEmpty { return timeString }
  let timeAlphabet = ["0","1", "2", "3", "4", "5", "6", "7", "8", "9", ":"]
  let timeFilter = String(newTime.filter{timeAlphabet.contains(String($0))})
  if(timeFilter.count < 8) { return nil }
  var timeArr = newTime.split(separator: ":").map{Int($0)!}

  while timeArr[2] >= 60 {
      timeArr[2] -= 60
      timeArr[1] += 1
  }

  while timeArr[1] >= 60 {
      timeArr[1] -= 60
      timeArr[0] += 1
  }

  while timeArr[0] >= 24 && timeArr[2] > 0 && timeArr[1] > 0 {
      timeArr[0] -= 24
  }

  var newtimeArr = timeArr.map{String($0)}

  if Int(newtimeArr[0])! < 10 {
    newtimeArr[0] = "0" + newtimeArr[0]
  }

  if Int(newtimeArr[1])! < 10 {
    newtimeArr[1] = "0" + newtimeArr[1]
  }

  if Int(newtimeArr[2])! < 10 {
    newtimeArr[2] = "0" + newtimeArr[2]
  }

  return newtimeArr.joined(separator: ":")
}
