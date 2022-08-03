//
//  EVIOChargingSessionSummary.swift
//  evio
//
//  Created by Tiago Moreira on 15/06/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOChargingSessionSummary: Codable {
    
    public var charger: EVIOCharger?
    public var ev: EVIOEv?
    public var chargingSession: EVIOChargingSession?
    public var contract: EVIOContract?
    public var booking: EVIOBooking?
    public var parking: EVIOParking?
    public var chargingSessionTariffs: EVIOChargingSessionMobie?

}
