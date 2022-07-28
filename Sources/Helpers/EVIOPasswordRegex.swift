//
//  EVIOPasswordRegex.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 28/02/2022.
//

import Foundation

public struct EVIOPasswordRegex {
    
    public static let numberOfCharacters: Int = 8
    public static let numberOfLowerCaseCharacters: Int = 1
    public static let numberOfUpperCaseCharacters: Int = 1
    public static let numberOfNumberCharacters: Int = 1
    public static let numberOfSpecialCharacters: Int = 1
    public static let validSpecialCharacters: String = "@_$!%*?&"

    public static func isValid(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@_$!%*?&])[A-Za-z\\d@_$!%*?&]{8,}$"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
    public static func doesPasswordContainsLowerCaseCharacter(_ password: String) -> Bool {
        let passwordRegex = ".*[a-z]+.*"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
    public static func doesPasswordContainsUpperCaseCharacter(_ password: String) -> Bool {
        let passwordRegex = ".*[A-Z]+.*"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
    public static func doesPasswordContainsNumber(_ password: String) -> Bool {
        let passwordRegex = ".*[0-9]+.*"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
    public static func doesPasswordContainsValidSymbol(_ password: String) -> Bool {
        let passwordRegex = ".*[@_$!%*?&]+.*"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
    public static func passwordDoesNotContainAnyInvalidCharacters(_ password: String) -> Bool {
        let passwordRegex = ".*[^a-zA-Z0-9@_$!%*?&].*"
        let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return passwordTest.evaluate(with: password)
    }
    
}
