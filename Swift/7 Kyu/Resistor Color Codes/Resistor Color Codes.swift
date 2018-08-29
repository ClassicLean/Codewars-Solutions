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
    var decodedResult = Float(Int(decoded[0] + decoded[1])! * (10 ^^ Int(decoded[2])!))
    var finalResult = ""

    if decodedResult >= 1000 && decodedResult < 1000000 {
        decodedResult /= 1000
        if Int(decoded[2])! > 2 || (Int(decoded[2])! < 3 && decoded[1] == "0") { finalResult += "\(String(Int(decodedResult)))k ohms," }
        else { finalResult += "\(String(decodedResult))k ohms," }
    }
    else if decodedResult >= 1000000 {
        print(Float(decodedResult / 1000000))
        print(decoded)
        decodedResult /= 1000000
        if Int(decoded[2])! > 5 || (Int(decoded[2])! < 6 && decoded[1] == "0") { finalResult += "\(String(Int(decodedResult)))M ohms," }
        else { finalResult += "\(String(decodedResult))M ohms," }
    }
    else { finalResult = "\(String(Int(decodedResult))) ohms," }

    guard resistors.indices.contains(3)
        else {
            finalResult += " 20%"
            return finalResult
        }

    if resistors[3] == "gold" { finalResult += " 5%" }
    else if resistors[3] == "silver" { finalResult += " 10%" }

    return finalResult
}
