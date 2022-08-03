//
//  EVIOPaymentBy.swift
//  WLModels
//
//  Created by Tiago Moreira on 11/02/2022.
//

import Foundation

public enum EVIOPaymentBy: String, Codable {
    
    case myself = "myself"
    case driver = "driver"
    
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
        case "myself":
            self = .myself
        default:
            self = .driver
        }
    }
    
}
