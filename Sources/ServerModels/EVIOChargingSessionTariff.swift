//
//  EVIOChargingSessionTariff.swift
//  evio
//
//  Created by João Moreira on 28/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOChargingSessionTariff: Codable {
    
    public var total: Double?
    public var activation: Double?
    public var time: Double?
    public var energy: Double?
    public var parking: Double?
    
}
