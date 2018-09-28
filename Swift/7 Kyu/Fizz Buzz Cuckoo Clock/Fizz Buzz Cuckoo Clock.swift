func fizzBuzzCuckooClock(_ time: String) -> String {
  let numbers = time.components(separatedBy: ":").flatMap{ Int($0) }
  let minute = numbers[1]
  if [0, 30].contains(minute) {
    let hour = numbers[0]
    let count = minute == 30 ? 1 : (hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour))
    return (0..<count).map{ _ in "Cuckoo" }.joined(separator: " ")
  } else {
      let buffer = [(3, "Fizz"), (5, "Buzz")].flatMap{ minute % $0 == 0 ? $1 : nil }
      return buffer.isEmpty ? "tick" : buffer.joined(separator: " ")
  }
}
