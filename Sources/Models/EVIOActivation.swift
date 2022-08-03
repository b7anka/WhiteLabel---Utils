//
//  EVIOActivation.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/03/2022.
//

import Foundation

public struct EVIOActivation: Codable {
    
    public var email: String?
    public var mobile: String?
    public var internationalPrefix: String?
    public var code: String?
    public var password: String?
    
    public init(email: String?, mobile: String?, internationalPrefix: String?, code: String?, password: String?) {
        self.email = email
        self.mobile = mobile
        self.internationalPrefix = internationalPrefix
        self.code = code
        self.password = password
    }
    
    public func toDictionary() -> [String: Any] {
        do {
            let data: Data = try JSONEncoder().encode(self)
            if let dict: [String: Any] = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
            return [:]
        } catch {
            return [:]
        }
    }
    
}
