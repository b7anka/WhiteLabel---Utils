//
//  EVIOChargingStationPriceDetailsRestriction.swift
//  
//
//  Created by Tiago Moreira on 29/09/2022.
//

import Foundation

public struct EVIOChargingStationPriceDetailsRestriction: Codable {
    
    public var restrictionType: EVIOChargingStationRestrictionType?
    public var values: [EVIOChargingStationPriceDetailsRestrictionValues]?
    
}
