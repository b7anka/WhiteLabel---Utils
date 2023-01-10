//
//  EVIOContractStatus.swift
//  WLModels
//
//  Created by Tiago Moreira on 29/11/2021.
//

import Foundation

public enum EVIOContractStatus: String, Codable {
    
    case inactive
    case toRequest
    case active
    
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
        case Self.toRequest.rawValue:
            self = .toRequest
        case Self.active.rawValue:
            self = .active
        default:
            self = .inactive
        }
    }
    
}
