//TODO fix. Works on other online compilers but not on codewars
import Foundation

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
  var result = [String]()
  for word in arr {
    if word.lowercased().range(of: str) != nil {
      result.append(word)
    }
  }
  if arr.count == 0 || result.count == 0 {
    result.append("Empty")
  }
  return result
}
