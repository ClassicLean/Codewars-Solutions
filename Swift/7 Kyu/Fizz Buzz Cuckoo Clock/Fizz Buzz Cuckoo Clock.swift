func fizzBuzzCuckooClock(_ time: String) -> String {
    let numbers = time.split(separator: ":")
    let minutes = Int(numbers[1])!
    var hours = Int(numbers[0])!
    if hours == 0 { hours = 12 }
    else if hours > 12 { hours -= 12 }
    if minutes % 5 == 0 && minutes % 3 == 0 && minutes == 0 {
        let cuckoo = String(repeating: "Cuckoo ", count: hours)
        let start = cuckoo.index(cuckoo.startIndex, offsetBy: 0)
        let end = cuckoo.index(cuckoo.endIndex, offsetBy: -1)
        let range = start..<end
        return String(cuckoo[range])
    }
    else if minutes % 5 == 0 && minutes % 3 == 0 && minutes == 30 { return "Cuckoo" }
    else if minutes % 5 == 0 && minutes % 3 == 0 { return "Fizz Buzz" }
    else if minutes % 3 == 0 { return "Fizz" }
    else if minutes % 5 == 0 { return "Buzz" }
    return "tick"
}
