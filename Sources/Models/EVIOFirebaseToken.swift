//
//  EVIOFirebaseToken.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/05/2022.
//

import Foundation

public struct EVIOFirebaseToken: Codable {
    
    public var token: String?
    public var refreshToken: String?
    
    public init(token: String?, refreshToken: String?) {
        self.token = token
        self.refreshToken = refreshToken
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
