func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let result = arr.filter({ $0.lowercased().contains(str.lowercased()) })
    return result.isEmpty ? ["Empty"] : result
}
