//
//  EVIODayType.swift
//  WLModels
//
//  Created by Tiago Moreira on 22/01/2022.
//

import Foundation

public enum EVIODayType: String, Codable {
    
    case allDay
    case custom
    
    public init?(rawValue: String) {
        switch rawValue {
        case "allDay":
            self = .allDay
        default:
            self = .custom
        }
    }
    
}
