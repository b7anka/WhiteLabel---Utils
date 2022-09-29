//
//  EVIOChargingStationPriceDetailsResponse.swift
//  
//
//  Created by Tiago Moreira on 29/09/2022.
//

import Foundation

public struct EVIOChargingStationPriceDetailsResponse: Codable {
    
    public var cpo: EVIOChargingStationPriceDetailsCPO?
    public var ceme: EVIOChargingStationPriceDetailsCEME?
    public var fees: EVIOChargingStationPriceDetailsFEES?
    public var tariffType: String?
    
}
