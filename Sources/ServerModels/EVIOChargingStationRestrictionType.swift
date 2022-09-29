//
//  EVIOChargingStationRestrictionType.swift
//  
//
//  Created by Tiago Moreira on 29/09/2022.
//

import Foundation

public enum EVIOChargingStationRestrictionType: String, Codable, Identifiable {
    
    case ´default´ = "default"
    case day
    case time
    case date
    case kwh
    case current
    case power
    case duration
    
    public var id: String {
        return self.rawValue
    }
    
}
