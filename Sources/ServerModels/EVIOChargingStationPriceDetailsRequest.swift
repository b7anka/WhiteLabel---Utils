//
//  EVIOChargingStationPriceDetailsRequest.swift
//  evio
//
//  Created by Tiago Moreira on 22/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOChargingStationPriceDetailsRequest: Codable {
    
    public var tariffId: String?
    public var planId: String?
    public var source: String?
    public var voltageLevel: String?
    public var countryCode: String?
    public var currentDate: String?
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
