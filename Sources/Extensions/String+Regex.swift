//
//  String+Regex.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 15/02/2022.
//

import Foundation

public typealias EVIORegex = String

public extension String {
    
    static let emailRegEx = "(([^<>()\\[\\]\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))"
    static let postalRegex = "[1-9][0-9]{3}-[0-9]{3}"
    
}
