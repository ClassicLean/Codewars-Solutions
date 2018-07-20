func correct(_ timeString: String?) -> String? {
  guard let time = timeString, time.isEmpty == false
    else { return timeString }

  let numbers = time.components(separatedBy: ":").flatMap({Int($0)})
  guard numbers.count == 3
    else { return nil }

  let timeStamp = numbers[2] + numbers[1] * 60 + numbers[0] * 3600
  let hours = (timeStamp / 3600) % 24
  let minutes = (timeStamp / 60) % 60
  let seconds = timeStamp % 60
  return "\(String(format: "%02d", hours)):\(String(format: "%02d", minutes)):\(String(format: "%02d", seconds))"
}
