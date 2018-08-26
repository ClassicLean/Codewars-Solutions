#TODO fix this error - passing value of type 'String' to an inout parameter requires explicit '&'

import Foundation

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

func decodeResistorColors(_ bands: String) -> String {
    let resistorColors: [String : String] = [
    "black": "0",
    "brown": "1",
    "red": "2",
    "orange": "3",
    "yellow": "4",
    "green": "5",
    "blue": "6",
    "violet": "7",
    "gray": "8",
    "white": "9"
    ]

    let resistors = bands.components(separatedBy: " ")
    var decoded = resistors.flatMap{ resistorColors[$0] }
    var decodedResult = Int(decoded[0] + decoded[1])! * (10 ^^ Int(decoded[2])!)
    var finalResult = ""

    if decodedResult >= 1000 && decodedResult < 1000000 {
        decodedResult /= 1000
        finalResult += "\(String(decodedResult))k ohms,"
    }
    else if decodedResult >= 1000000 {
        decodedResult /= 1000000
        finalResult += "\(String(decodedResult))M ohms,"
    }
    else { finalResult = "\(String(decodedResult)) ohms," }

    guard decoded.indices.contains(4) else { return finalResult += " 20%" }

    if decoded[4] == "gold" { finalResult += " 5%" }
    else if decoded[4] == "silver" { finalResult += " 10%" }

    return finalResult
}

let test = "yellow violet black gold"
print(decodeResistorColors(test))
