//
//  EVIOUserAccessType.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

public enum EVIOUserAccessType: String, Codable {
    
    case limited
    case all
    
    public init?(rawValue: String) {
        switch rawValue {
        case "all":
            self = .all
        default:
            self = .limited
        }
    }
    
}
