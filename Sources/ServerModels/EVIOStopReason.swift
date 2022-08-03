//
//  EVIOStopReason.swift
//  WLModels
//
//  Created by Tiago Moreira on 15/06/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOStopReason: Codable {

    public var reasonCode: String?
    public var reasonText: String?
    
    public init(reasonCode: String?, reasonText: String?) {
        self.reasonCode = reasonCode
        self.reasonText = reasonText
    }
    
    public func toDictionary() -> [String: String] {
        if let data = try? JSONEncoder().encode(self) {
            if let dict = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: String] {
                return dict
            }
        }
        return [:]
    }
    
}
