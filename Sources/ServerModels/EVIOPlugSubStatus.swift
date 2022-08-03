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
    
}
