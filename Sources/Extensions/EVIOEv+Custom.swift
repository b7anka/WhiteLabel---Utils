//
//  EVIOEv+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 19/01/2022.
//

import Foundation

public extension EVIOEv {
    
    static let anonymous: EVIOEv = EVIOEv(id: "-1", evId: "-1", brand: EVIOLanguageManager.shared.language.generalUnidentifiedEv)
    
    static var teslaModelS: EVIOEv {
        let evInfo: EVIOEvInfo = EVIOEvInfo(id: nil, plugsChargingTable: nil, plugsFastChargingTable: nil, plugs: nil, databaseVehicleID: nil, yearFrom: nil, yearTo: nil, range: nil, useableBatteryCapacity: 95.0, maxBatteryCapacity: 100.0, eletricMotorPower: nil, internalChargerPower: 16.5, internalChargerChargeTime: 420, internalChargerChargeSpeed: 76, maxFastChargingPower: 200.0, avgFastChargingPower: nil, fastchargeChargeTime: 38, fastchargeChargeSpeed: 560, evType: nil, evEfficiency: nil, consumptionCity: nil, consumptionHighway: nil)
        let ev: EVIOEv = EVIOEv(primaryEV: nil, status: nil, hasFleet: nil, usageNumber: nil, id: nil, evId: nil, otherInfo: nil, version: nil, model: "Model S", imageContent: nil, licensePlate: nil, country: nil, brand: "Tesla", fleet: nil, sessions: nil, listOfGroupDrivers: nil, listOfDrivers: nil, userID: nil, evType: nil, evInfo: evInfo, createdAt: nil, updatedAt: nil, v: nil, contractID: nil)
        return ev
    }
    static var id3: EVIOEv {
        let evInfo: EVIOEvInfo = EVIOEvInfo(id: nil, plugsChargingTable: nil, plugsFastChargingTable: nil, plugs: nil, databaseVehicleID: nil, yearFrom: nil, yearTo: nil, range: nil, useableBatteryCapacity: 58.0, maxBatteryCapacity: 62.0, eletricMotorPower: nil, internalChargerPower: 11.0, internalChargerChargeTime: 375, internalChargerChargeSpeed: 56, maxFastChargingPower: 124.0, avgFastChargingPower: nil, fastchargeChargeTime: 31, fastchargeChargeSpeed: 470, evType: nil, evEfficiency: nil, consumptionCity: nil, consumptionHighway: nil)
        let ev: EVIOEv = EVIOEv(primaryEV: nil, status: nil, hasFleet: nil, usageNumber: nil, id: nil, evId: nil, otherInfo: nil, version: nil, model: "ID.3", imageContent: nil, licensePlate: nil, country: nil, brand: "Volkswagen", fleet: nil, sessions: nil, listOfGroupDrivers: nil, listOfDrivers: nil, userID: nil, evType: nil, evInfo: evInfo, createdAt: nil, updatedAt: nil, v: nil, contractID: nil)
        return ev
    }
    
}
