//
//  EVIOChargerAvailabilityType.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public enum EVIOChargerAvailabilityType: String, Codable {
    
    case limited = "Limited"
    case always = "Always"
    case custom = "Custom"
    
    public init?(rawValue: String) {
        switch rawValue {
        case "Limited":
            self = .limited
        case "Custom":
            self = .custom
        default:
            self = .always
        }
    }
    
}
