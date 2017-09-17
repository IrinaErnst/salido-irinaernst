//: Irina Ernst's Playground - code challenge for SALIDO

import UIKit

/*
CODE CHALLENGE:
For the set of all integers between 1 and 1,000,000, write a program to express those numbers in English.
Example: one, two, three, ..., seven hundred, ..., six thousand, ..., one million.
*/


extension Integer {
    
    /// Express number in English (only for positive numbers between 1 and 1,000,000)
    ///
    /// - Returns: Number in English as a string
    func toPlainEnglish() -> String {
        guard self > 0 && self <= 1000000 else { return "🚫 Invalid number! Please select the " +
            "number between 1 and 1,000,000" }
        let number: NSNumber = NSNumber(integerLiteral: self as! Int)
        let numberFormatter: NumberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .spellOut
        return numberFormatter.string(from: number) ?? "Invalid number!"
    }
    
}


/// Express set of numbers between 1 and 1,000,000 in English
///
/// - Parameters:
///   - startInt: The number (int) to start the set of numbers
///   - finishInt: The number (int) to finish the set of numbers
/// - Returns: String (set of numbers in English)
func setToPlainEnglish(from startInt: Int, to finishInt: Int) -> String {
    guard startInt < finishInt else { return "🚫 Invalid set of numbers!" }
    guard startInt > 0 && startInt <= 1000000 else { return "🚫 First number is invalid!" }
    guard finishInt > 0 && finishInt <= 1000000 else { return "🚫 Second number is invalid!" }
    
    let intArray = Array(startInt...finishInt)
    let stringArray = intArray.map({ return $0.toPlainEnglish() })
    stringArray.joined(separator: ", ")
    
    return stringArray.joined(separator: ", ")
}


// MARK: - Tests examples
2020.toPlainEnglish()
(-1).toPlainEnglish()
setToPlainEnglish(from: 999990, to: 1000000)


