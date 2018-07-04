import Foundation

extension String {
    func toJadenCase() -> String {
      var result: String = ""
      let stringArray = self.characters.split{$0 == " "}.map(String.init)
      for counter in stride(from: 1, through: stringArray.count, by: 1){
        result += stringArray[counter - 1].capitalized + " "
      }
      return result.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
