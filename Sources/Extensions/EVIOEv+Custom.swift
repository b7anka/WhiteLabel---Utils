//
//  EVIOEv+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation
import WLModels

public extension EVIOEv {
    
    public static let anonymous: EVIOEv = EVIOEv(id: "-1", evId: "-1", brand: EVIOLanguageManager.shared.language.generalUnidentifiedEv)
    public static var teslaModelS: EVIOEv {
        let evInfo: EVIOEvInfo = EVIOEvInfo(id: nil, plugsChargingTable: nil, plugsFastChargingTable: nil, plugs: nil, databaseVehicleID: nil, yearFrom: nil, yearTo: nil, range: nil, useableBatteryCapacity: 95.0, maxBatteryCapacity: 100.0, eletricMotorPower: nil, internalChargerPower: 16.5, internalChargerChargeTime: 420, internalChargerChargeSpeed: 76, maxFastChargingPower: 200.0, avgFastChargingPower: nil, fastchargeChargeTime: 38, fastchargeChargeSpeed: 560, evType: nil, evEfficiency: nil, consumptionCity: nil, consumptionHighway: nil)
        let ev: EVIOEv = EVIOEv(primaryEV: nil, status: nil, hasFleet: nil, usageNumber: nil, id: nil, evId: nil, otherInfo: nil, version: nil, model: "Model S", imageContent: nil, licensePlate: nil, country: nil, brand: "Tesla", fleet: nil, sessions: nil, listOfGroupDrivers: nil, listOfDrivers: nil, userID: nil, evType: nil, evInfo: evInfo, createdAt: nil, updatedAt: nil, v: nil, contractID: nil)
        return ev
    }
    public static var renaultZoe: EVIOEv {
        let evInfo: EVIOEvInfo = EVIOEvInfo(id: nil, plugsChargingTable: nil, plugsFastChargingTable: nil, plugs: nil, databaseVehicleID: nil, yearFrom: nil, yearTo: nil, range: nil, useableBatteryCapacity: 52.0, maxBatteryCapacity: 54.7, eletricMotorPower: nil, internalChargerPower: 22.0, internalChargerChargeTime: 180, internalChargerChargeSpeed: 110, maxFastChargingPower: 46.0, avgFastChargingPower: nil, fastchargeChargeTime: 56, fastchargeChargeSpeed: 230, evType: nil, evEfficiency: nil, consumptionCity: nil, consumptionHighway: nil)
        let ev: EVIOEv = EVIOEv(primaryEV: nil, status: nil, hasFleet: nil, usageNumber: nil, id: nil, evId: nil, otherInfo: nil, version: nil, model: "ZOE", imageContent: nil, licensePlate: nil, country: nil, brand: "Renault", fleet: nil, sessions: nil, listOfGroupDrivers: nil, listOfDrivers: nil, userID: nil, evType: nil, evInfo: evInfo, createdAt: nil, updatedAt: nil, v: nil, contractID: nil)
        return ev
    }
    
}
