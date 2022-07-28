//
//  EVIOLanguageManager.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import Foundation
import WLModels

/// # SINGLTON STRUCT THAT HANDLES THE APP'S TRANSLATIONS
public struct EVIOLanguageManager {
    
    // MARK: - STATIC PROPERTIES
    public static var shared: EVIOLanguageManager = EVIOLanguageManager()
    
    // MARK: - PRIVATE PROPERTIES
    
    // the dictionary containing all of the app's translations keys and values
    private var languageDict: [String: String] = [:] {
        didSet {
            self.convertLanguageDictToModel()
        }
    }
    public var language: EVIOLanguage
    
    // MARK: - INIT
    public init() {
        // gets the dictionary from the user defaults if it exists
        self.languageDict = EVIOStorageManager.shared.getAppTranslation()
        self.language = EVIOLanguage()
        self.convertLanguageDictToModel()
    }
    
    // MARK: - PUBLIC METHODS
    /// # METHOD TO UPDATE THE IN-MEMORY DICTIONARY OF THE APP'S TRANSLATIONS
    /// - Parameter dictionary: the dictionary to be updated with
    mutating func updateLanguageWith(dictionary: [String: String]) {
        // updates the dictionary with the one received
        self.languageDict = dictionary
    }
    
    /// # METHOD TO RETURN A STRING REPRESENTING THE VALUE FOR THE KEY PROVIDED
    /// - Parameter key: the key of type string  for which the value will be provided
    /// - Returns: a string representing the value for the key provided from the in-memory dictionary or the value for the key provided from the Localizable.strings file or the key itsef in case none is found
    public func getTranslationFor(key: String) -> String {
        // returns the value for the key provided or in case it does not exist returns the value for the key from the Localizable.strings file
        return self.languageDict[key] ?? NSLocalizedString(key, comment: "")
    }
    
    /// # METHOD TO CONVERT THE LANGUAGE DICT INTO A SWIFT MODEL
    private mutating func convertLanguageDictToModel() {
        // we try to get a data object from the language dictionary, then we try to get na EVIOLanguage object from the data
        if let data: Data = try? JSONSerialization.data(withJSONObject: self.languageDict, options: []), let language: EVIOLanguage = try? JSONDecoder().decode(EVIOLanguage.self, from: data) {
            // if everything was successfully we assign the new object to the current one
            self.language = language
        }
    }
    
}
