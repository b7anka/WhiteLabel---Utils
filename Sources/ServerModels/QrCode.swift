//
//  QrCode.swift
//  evio
//
//  Created by João Tiago Ferreira Moreira on 02/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct QrCode: Codable {

    public var chargerId: String?
    public var hwId: String?
    public var plugId: String?
    public var chargerType: String?
    public var geometry: EVIOGeometry?
    public var chargingDistance: String?
    public var charger: EVIOCharger?
    
}

extension QrCode: Equatable {
    
    public static func == (lhs: QrCode, rhs: QrCode) -> Bool {
        return lhs.hwId == rhs.hwId
    }
    
}
