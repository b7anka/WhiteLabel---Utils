//
//  EVIOValidationManager.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 15/02/2022.
//

import Foundation
import PhoneNumberKit

public struct EVIOValidationManager {
    
    public static let shared: EVIOValidationManager = EVIOValidationManager()
    private let validator: PhoneNumberKit = PhoneNumberKit()
    
    public func isNifValid(nif: String) -> Bool {
        
        let nifPattern = "[0-9]{9}"
        
        let nifTest = NSPredicate(format:"SELF MATCHES[c] %@", nifPattern)
        
        if !nifTest.evaluate(with: nif) {
            return false
        }
        
        if nif[..<nif.index(nif.startIndex, offsetBy: 1)] == "1" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 1)] == "2" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 1)] == "3" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "45" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 1)] == "5" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 1)] == "6" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "70" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "71" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "72" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "74" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "75" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "77" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "78" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "79" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 1)] == "8" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "90" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "91" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "98" ||
            nif[..<nif.index(nif.startIndex, offsetBy: 2)] == "99" {
            
            var checkDigit: Int!
            
            let nf: [String] = nif.map({"\($0)"})
            
            let check1: Int = Int(nf[7])! * 2
            let check2: Int = Int(nf[6])! * 3
            let check3: Int = Int(nf[5])! * 4
            let check4: Int = Int(nf[4])! * 5
            let check5: Int = Int(nf[3])! * 6
            let check6: Int = Int(nf[2])! * 7
            let check7: Int = Int(nf[1])! * 8
            let check8: Int = Int(nf[0])! * 9
            
            let total: Int = check1 + check2 + check3 + check4 + check5 + check6 + check7 + check8
            let module11: Int = total % 11
            
            if module11 == 0 || module11 == 1 {
                checkDigit = 0
            } else {
                checkDigit = 11 - module11
            }
            
            if checkDigit == Int(nf[nf.count - 1]) {
                return true
            }
            
        }
        return false
    }
    
    public func isValid(number: String, internationalPrefix: String) -> Bool {
        guard internationalPrefix == .defaultCountryPhoneCode else { return true }
        return self.validator.isValidPhoneNumber("\(internationalPrefix)\(number)")
    }
    
    public func isValid(email: String) -> Bool {
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", EVIORegex.emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    public func isValid(postalCode: String) -> Bool {
        let postalTest = NSPredicate(format:"SELF MATCHES[c] %@", EVIORegex.postalRegex)
        return postalTest.evaluate(with: postalCode)
    }
    
}
