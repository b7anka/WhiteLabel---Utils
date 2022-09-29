//
//  EVIOChargingStationPriceDetailsRestrictionValues.swift
//  
//
//  Created by Tiago Moreira on 29/09/2022.
//

import Foundation

public struct EVIOChargingStationPriceDetailsRestrictionValues: Codable {
    
    public var restrictionUom: String?
    public var restrictionValues: EVIOChargingStationPriceDetailsRestrictionValuesChild?
    public var price: Double?
    public var step: Double?
    public var uom: String?
    public var currency: String?
    
}
