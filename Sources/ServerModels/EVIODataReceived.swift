//
//  EVIODataReceived.swift
//  WLModels
//
//  Created by Tiago Moreira on 23/05/2022.
//

import Foundation

public struct EVIODataReceived: Codable {
    
    public var originalReference: String?
    public var reason: String?
    public var merchantAccountCode: String?
    public var eventCode: String?
    public var paymentMethod: String?
    public var currency: String?
    public var pspReference: String?
    public var merchantReference: String?
    public var value: Double?
    public var eventDate: String?
    public var operations: String?
    public var amount: EVIOCurrency?
    
}
