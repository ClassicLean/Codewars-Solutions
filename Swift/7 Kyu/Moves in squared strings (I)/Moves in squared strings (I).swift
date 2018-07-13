func horMirror(_ s: String) -> String {
    var stringArray = s.characters.split{$0 == "\n"}.map(String.init)
    var reverseArray : [String] = []
    for counter in 0..<stringArray.count{
        reverseArray.append(stringArray[(stringArray.count - 1) - counter])
    }
    return reverseArray.joined(separator: "\n")
}

func vertMirror(_ s: String) -> String {
    var stringArray = s.characters.split{$0 == "\n"}.map(String.init)
    var verArray : [String] = []
    for counter in 1...stringArray.count {
        var charArray = Array(stringArray[counter - 1].characters)
        var reverseArray : [Character] = []
        for innerCounter in 0..<charArray.count {
            reverseArray.append(charArray[(charArray.count - 1) - innerCounter])
        }
        verArray.append(String(reverseArray))
    }
    return verArray.joined(separator: "\n")
}

func oper(_ funcName: (String) -> String, _ s: String) -> String {
    return funcName(s)
} 
