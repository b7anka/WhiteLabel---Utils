//
//  EVIOReportIssue.swift
//  EVIO - WhiteLabel
//
//  Created by João Tiago Ferreira Moreira on 10/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOReportIssue: Codable {
    
    public var chargerId: String?
    public var hwId: String?
    public var hostId: String?
    public var reasonCode: String?
    public var reasonText: String?
    public var chargerType: String?
    
    public init(chargerId: String?, hwId: String?, hostId: String?, reasonCode: String?, reasonText: String?, chargerType: String?) {
        self.chargerId = chargerId
        self.hwId = hwId
        self.hostId = hostId
        self.reasonText = reasonText
        self.reasonCode = reasonCode
        self.chargerType = chargerType
    }
    
    public func toHost() -> [String: Any] {
        return [
            "chargerId": self.chargerId as Any,
            "hwId": self.hwId as Any,
            "hostId": self.hostId as Any,
            "reasonCode": self.reasonCode as Any,
            "reasonText": self.reasonText as Any,
            "chargerType": self.chargerType as Any
        ]
    }
    
    public func toEvio() -> [String: Any] {
        return [
            "chargerId": self.chargerId as Any,
            "hwId": self.hwId as Any,
            "reasonCode": self.reasonCode as Any,
            "reasonText": self.reasonText as Any
        ]
    }
    
}
