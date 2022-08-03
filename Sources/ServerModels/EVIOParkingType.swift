//
//  EVIOParkingType.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public enum EVIOParkingType: String, Codable {
    
    case street = "Street"
    case privateGarage = "PrivateGarage"
    case outdoorGarage = "OutdoorGarage"
    case coverParking = "CoverParking"
    case outdoorParking = "OutdoorParking"
    case unknown
    
    public init?(rawValue: String) {
        switch rawValue {
        case "Street":
            self = .street
        case "PrivateGarage":
            self = .privateGarage
        case "OutdoorGarage":
            self = .outdoorGarage
        case "CoverParking":
            self = .coverParking
        case "OutdoorParking":
            self = .outdoorParking
        default:
            self = .unknown
        }
    }
    
}
