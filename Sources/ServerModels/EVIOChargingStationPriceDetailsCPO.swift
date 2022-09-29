//
//  EVIOChargingStationPriceDetailsCPO.swift
//  
//
//  Created by Tiago Moreira on 29/09/2022.
//

import Foundation

public struct EVIOChargingStationPriceDetailsCPO: Codable {
    
    public var flat: [EVIOChargingStationPriceDetailsRestriction]?
    public var time: [EVIOChargingStationPriceDetailsRestriction]?
    public var energy: [EVIOChargingStationPriceDetailsRestriction]?
    public var parking: [EVIOChargingStationPriceDetailsRestriction]?
    
}
