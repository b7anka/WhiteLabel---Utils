//
//  EVIOUnlockConnector.swift
//  evio
//
//  Created by João Moreira on 26/10/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOUnlockConnector: Encodable {
    
    public var chargerId: String?
    public var chargerType: String?
    public var action: String?
    public var hwId: String?
    public var plugId: String?
    
    public init(chargerId: String?, chargerType: String?, action: String?, hwId: String?, plugId: String?) {
        self.chargerId = chargerId
        self.chargerType = chargerType
        self.action = action
        self.hwId = hwId
        self.plugId = plugId
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
