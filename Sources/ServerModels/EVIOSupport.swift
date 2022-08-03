//
//  EVIOSupport.swift
//  WLModels
//
//  Created by Tiago Moreira on 11/05/2022.
//

import Foundation

public struct EVIOSupport: Codable {
    
    public var name: String?
    public var email: String?
    public var mobile: String?
    public var internationalPrefix: String?
    public var subject: EVIOSupportSubject?
    public var message: String?
    public var imageContent: [String?]?
    
    public init(name: String?, email: String?, mobile: String?, internationalPrefix: String?, subject: EVIOSupportSubject?, message: String?, imageContent: [String?]? = nil) {
        self.internationalPrefix = internationalPrefix
        self.name = name
        self.email = email
        self.mobile = mobile
        self.subject = subject
        self.message = message
        self.imageContent = imageContent
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
