func horMirror(_ s: String) -> String {
    return s.components(separatedBy: "\n").reversed().joined(separator: "\n")
}
func vertMirror(_ s: String) -> String {
    return s.components(separatedBy: "\n").map({String($0.characters.reversed())}).joined(separator: "\n")
}

func oper(_ funcName: (String) -> String, _ s: String) -> String {
    return funcName(s)
} 
