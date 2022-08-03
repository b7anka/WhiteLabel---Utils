//
//  EVIOChargingSessionMobie.swift
//  evio
//
//  Created by João Moreira on 28/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOChargingSessionMobie: Codable {
    
    public var opc: EVIOChargingSessionTariff?
    public var ceme: EVIOChargingSessionTariff?
    public var fees: EVIOChargingSessionFees?
    
}
