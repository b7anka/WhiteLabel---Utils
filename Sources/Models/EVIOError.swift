//
//  EVIOError.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 01/12/2021.
//

import Foundation

/// # CUSTOM ERROR ENUM THAT CONFORMS TO THE SWIFT'S ERROR PROTOCOL
public enum EVIOError: LocalizedError, CustomStringConvertible {
    
    // THROWN WHEN AN INVALID URL IS PROVIDED
    case invalidUrl
    // THROWN WHEN THERE IS NO JSON DATA TO DECODE
    case noJsonDataToDecode
    // THROWN WHEN A REQUEST IS ALREADY RUNNING
    case requestAlreadyRunning
    // TROWN WHEN ATTEPTED TO READ AN ITEM THAT DOES NOT EXIST IN THE KEYCHAIN
    case itemNotFound
    // TROWN WHEN ATTEPTED TO SAVE AN ITEM THAT ALREADY EXISTS IN THE KEYCHAIN
    // USE UPDATE INSTEAD OF SAVE TO UPDATE EXISTING ITEMS IN THE KEYCHAIN
    case duplicateItem
    // TROWN WHEN READING AN ITEM IN ANY FORMAT OTHER THAN DATA
    case invalidItemFormat
    // TROWN WHEN ANY OPERATION STATUS RESULT IS DIFERENT THAN errSecSuccess
    case unexpectedStatus(OSStatus)
    
    // THE ERROR'S DESCRIPTION
    public var description: String {
        switch self {
        case .invalidUrl:
            return "The url you provided is not valid"
        case .noJsonDataToDecode:
            return "No json data was found on the url's response"
        case .requestAlreadyRunning:
            return "A url request is already running"
        case .itemNotFound:
            return "The keychain item for the key provided was not found"
        case .duplicateItem:
            return "There is already an item in the keychain for that key"
        case .invalidItemFormat:
            return "The keychain item format is invalid"
        case .unexpectedStatus(let status):
            return "The operation failed with the status \(status)"
        }
    }
    
    // THE ERROR'S LOCALIZED DESCRIPTION
    public var errorDescription: String? {
        switch self {
        case .invalidUrl:
            return NSLocalizedString("general_invalidUrl", comment: "")
        case .noJsonDataToDecode:
            return NSLocalizedString("general_noJsonData", comment: "")
        case .requestAlreadyRunning:
            return NSLocalizedString("general_requestAlreadyRunning", comment: "")
        case .itemNotFound:
            return NSLocalizedString("keychainError_itemNotFound", comment: "")
        case .duplicateItem:
            return NSLocalizedString("keychainError_duplicatedItem", comment: "")
        case .invalidItemFormat:
            return NSLocalizedString("keychainError_invalidItemFormat", comment: "")
        case .unexpectedStatus(let status):
            return "\(NSLocalizedString("keychainError_unexpectedStatus", comment: "")) \(status)"
        }
    }
    
}
