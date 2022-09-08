//
//  EVIOSendMobileToServer.swift
//  
//
//  Created by Tiago Moreira on 09/08/2022.
//

import Foundation

public struct EVIOSendMobileToServer: Codable {
    
    public let internationalPrefix: String?
    public let mobile: String?
    
    public init(internationalPrefix: String?, mobile: String?) {
        self.internationalPrefix = internationalPrefix
        self.mobile = mobile
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
