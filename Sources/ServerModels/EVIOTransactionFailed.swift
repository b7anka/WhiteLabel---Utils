//
//  EVIOTransactionFailed.swift
//  WLModels
//
//  Created by Tiago Moreira on 28/04/2022.
//

import Foundation

public struct EVIOTransactionFailed: Codable {
    
    public var hwId: String?
    public var evId: String?
    public var plugId: String?
    
    public init(hwId: String?, evId: String?, plugId: String?) {
        self.hwId = hwId
        self.evId = evId
        self.plugId = plugId
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
