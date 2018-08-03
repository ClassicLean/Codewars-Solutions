import Foundation

func sumOfIntegersInString(_ string: String) -> Int {
  var word = "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"
  var result = ""
  while(true){
   if var newWord = word.range(of: "\\d", options: .regularExpression){
      result += word.substring(with:newWord)
      print(result)
      }
  }
}
