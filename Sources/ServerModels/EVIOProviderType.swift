//
//  EVIOProviderType.swift
//  WLModels
//
//  Created by Tiago Moreira on 18/05/2022.
//

import Foundation

public enum EVIOProviderType: String, Codable {
    
    case card = "Card"
    case mbReference = "MBRef"
    case mbRefPsNet = "MBRef/PSNet"
    case psNet = "PSNet"
    case mbWay = "MBWay"
    case wallet = "Wallet"
    case other = "Other"
    case none
    
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
        case Self.card.rawValue.lowercased():
            self = .card
        case Self.mbReference.rawValue.lowercased():
            self = .mbReference
        case Self.mbRefPsNet.rawValue.lowercased():
            self = .mbRefPsNet
        case Self.psNet.rawValue.lowercased():
            self = .psNet
        case Self.mbWay.rawValue.lowercased():
            self = .mbWay
        case Self.wallet.rawValue.lowercased():
            self = .wallet
        case Self.other.rawValue.lowercased():
            self = .other
        default:
            self = .none
        }
    }
    
}
