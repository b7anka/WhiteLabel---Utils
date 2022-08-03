//
//  EVIOHeaders.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

/// # MODEL THAT REPRESENTS THE HEADERS THAT THE BACKEND IS EXPECTING
public struct EVIOHeaders: Codable {
    
    // MARK: - PROPERTIES
    
    // The api key of the app given by the backend
    public var apiKey: String?
    // The version of the app that the user is running
    public var evioAppVersion: String?
    // The brand of the user's device (Apple 😂)
    public var mobileBrand: String?
    // The model of the user's device
    public var mobileModel: String?
    // The iOS version that the user is running on his device
    public var mobileVersion: String?
    // The user's refresh token
    public var refreshToken: String?
    // The user's token
    public var token: String?
    // The content type that the request is conforming to
    public var contentType: String?
    
    // MARK: - CODING KEYS
    private enum CodingKeys: String, CodingKey {
        case apiKey, evioAppVersion = "evioappversion", mobileBrand = "mobilebrand", mobileModel = "mobilemodel", mobileVersion = "mobileversion", refreshToken, token, contentType = "Content-Type"
    }
    
    // MARK: - INIT
    public init(apiKey: String?, evioAppVersion: String?, mobileBrand: String?, mobileModel: String?, mobileVersion: String?, refreshToken: String?, token: String?) {
        self.apiKey = apiKey
        self.evioAppVersion = evioAppVersion
        self.mobileBrand = mobileBrand
        self.mobileModel = mobileModel
        self.mobileVersion = mobileVersion
        self.refreshToken = refreshToken
        self.token = token
        self.contentType = "application/json"
    }
    
    // MARK: - PUBLIC METHODS
    
    /// # This method converts the json into a dictionary of string, string
    /// - Returns: a dictionary of string, string
    public func toDictionary() -> [String: String] {
        do {
            // tries to encode this class to a data object
            let data: Data = try JSONEncoder().encode(self)
            // tries to create a json object from the data object and tries to cast it to a dictionary of string, string
            if let dict = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: String] {
                // if successfully than returns the dict object
                return dict
            }
            // else returns an empty dictionary
            return [:]
        } catch {
            // encoding failed then return an empty dictionary
            return [:]
        }
    }
    
}
