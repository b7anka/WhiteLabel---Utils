//
//  EVIOChargerAccessType.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public enum EVIOChargerAccessType: String, Codable {
    
    case restrict = "Restrict"
    case `private` = "Private"
    case `public` = "Public"
    
    public init?(rawValue: String) {
        switch rawValue {
        case "Restrict":
            self = .restrict
        case "Private":
            self = .private
        default:
            self = .public
        }
    }
    
}
