//
//  EVIOStatus.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

public enum EVIOStatus: String, Codable {
    
    case free = "10"
    case charging = "20"
    case standby = "30"
    case unavailable = "40"
    case offline = "50"
    case failed = "60"
    
    public init?(rawValue: String) {
        switch rawValue {
        case "10":
            self = .free
        case "20":
            self = .charging
        case "30":
            self = .standby
        case "50":
            self = .offline
        case "60":
            self = .failed
        default:
            self = .unavailable
        }
    }
    
}
