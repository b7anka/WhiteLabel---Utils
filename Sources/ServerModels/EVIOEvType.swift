//
//  EVIOEvType.swift
//  WLModels
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation

public enum EVIOEVType: String, Codable {
    
    case car
    case truck
    case motorcycle
    case boat
    case plane
    case other = "otherEv"
    
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
        case "car":
            self = .car
        case "truck":
            self = .truck
        case "motorcycle":
            self = .motorcycle
        case "boat":
            self = .boat
        case "plane":
            self = .plane
        default:
            self = .other
        }
    }
    
}
