//
//  EVIONetworkType.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public enum EVIONetworkType: String, Codable {
    
    case evio = "EVIO"
    case mobie = "MobiE"
    case gireve = "Gireve"
    case roaming = "Roaming"
    case tesla = "Tesla"
    case ´internal´ = "Internal"
    case goCharge = "Go.Charge"
    case hyundai = "Hyundai"
    case other
    
    public init?(rawValue: String) {
        switch rawValue {
        case "EVIO":
            self = .evio
        case "MobiE":
            self = .mobie
        case "Gireve":
            self = .gireve
        case "Roaming":
            self = .roaming
        case "Tesla":
            self = .tesla
        case "Internal":
            self = .´internal´
        case "Go.Charge":
            self = .goCharge
        case "Hyundai":
            self = .hyundai
        default:
            self = .other
        }
    }
    
}
