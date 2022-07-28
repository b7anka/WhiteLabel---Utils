//
//  String+HttpMethods.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 18/12/2021.
//

import Foundation

// this line creates an alias for the String type
typealias HTTPMethod = String
/// # EXTENSION THAT CONTAINS ALL HTTP METHODS USED IN THIS APP
public extension String {
    
    static let get: String = "GET"
    static let post: String = "POST"
    static let put: String = "PUT"
    static let patch: String = "PATCH"
    static let delete: String = "DELETE"
    
}
