//
//  EVIOPlugSubStatus.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public enum EVIOPlugSubSatus: String, Codable {
    
    case available = "AVAILABLE"
    case blocked = "BLOCKED"
    case charging = "CHARGING"
    case inoperative = "INOPERATIVE"
    case outOfOrder = "OUTOFORDER"
    case planned = "PLANNED"
    case removed = "REMOVED"
    case reserved = "RESERVED"
    case unknown = "UNKNOWN"
    
    public init?(rawValue: String) {
        switch rawValue.uppercased() {
        case Self.available.rawValue:
            self = .available
        case Self.blocked.rawValue:
            self = .blocked
        case Self.charging.rawValue:
            self = .charging
        case Self.inoperative.rawValue:
            self = .inoperative
        case Self.outOfOrder.rawValue:
            self = .outOfOrder
        case Self.planned.rawValue:
            self = .planned
        case Self.removed.rawValue:
            self = .removed
        case Self.reserved.rawValue:
            self = .reserved
        default:
            self = .unknown
        }
    }
    
}
