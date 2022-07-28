//
//  String+PropertyListKeys.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/12/2021.
//

import Foundation

// this line creates an alias for the string struct
public typealias EVIOPlistKeys = String

/// # EXTENSION THAT ADDS PROPERTIES THAT REPRESENT PLIST KEYS TO THE SWIFT'S BUITL IN STRING STRUCT
public extension String {
    
    static let apiKey: String = "apiKey"
    static let tomtomSDKApiKey: String = "tomtomSDKApiKey"
    static let appVersion: String = "CFBundleShortVersionString"
    static let shortVersion: String = "CFBundleShortVersionString"
    static let appStoreId: String = "appStoreId"
    static let menuButtonType: String = "menuButtonType"
    static let mapStyleFileName: String = "mapStyleFileName"
    
}
