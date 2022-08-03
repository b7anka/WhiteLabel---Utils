//
//  EVIOServerAddresses.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

/// Enum containing all EVIO server addresses
public enum EVIOServerAddresses: String, Codable, Identifiable, CaseIterable, CustomStringConvertible {
    
    // Development server
    case qa = "http://172.16.102.37:3000/api"
    // Local development server
    case dev = "http://192.168.103.92:3000/api"
    // Pre production server
    case pre = "https://pre-api.go-evio.com/api"
    // Production server
    case prod = "https://api.go-evio.com/api"
    // Pre production unsecure server
    case preUnsecure = "http://172.16.102.31:3000/api"
    // App Store url
    case appStore = "itms-apps://apple.com/app/id"
    
    public var id: String {
        return self.rawValue
    }
    
    public var description: String {
        switch self {
        case .qa:
            return "QA"
        case .dev:
            return "DEV"
        case .pre:
            return "PRE"
        case .preUnsecure:
            return "PRE UNSECURE"
        case .prod:
            return "PRODUCTION"
        default:
            return "App Store"
        }
    }
    
    public var identificationId: String {
        switch self {
        case .pre, .preUnsecure:
            return "31"
        case .qa:
            return "37"
        case .prod:
            return "aws"
        default:
            return "dev"
        }
    }
    
}
