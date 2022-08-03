//
//  EVIOEstimatedCost.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 29/01/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOUnitPrice: Codable {
    
    public let uom: String
    public let value: Double
    
    public init(uom: String, value: Double) {
        self.uom = uom
        self.value = value
    }
    
}

public struct EVIOEstimatedCost: Codable {
    public let unitPrice: EVIOUnitPrice
    public let tariff: EVIOTariff?
    public let consumption: Double
    public let mainCost: Double
    public let chargingCost: Double?
    public let totalCost: Double
    public let iecCost: Double
    public let ivaCost: Double
    public let estimatedCostForMobie: EVIOEstimatedCostMobie?
    public let ceme: EVIOCemeTariff?
    public let chargingTime: Int
    public let fees: Double?
    public let parkingCost: EVIOEstimatedParkingCost?
    public let charger: EVIOCharger?
    public let selectedPlug: EVIOPlug?
    
    public init(unitPrice: EVIOUnitPrice, tariff: EVIOTariff? = nil, consumption: Double, mainCost: Double, totalCost: Double, iecCost: Double, ivaCost: Double, mobie: EVIOEstimatedCostMobie? = nil, ceme: EVIOCemeTariff, chargingTime: Int, fees: Double? = nil, parkingCost: EVIOEstimatedParkingCost? = nil, charger: EVIOCharger? = nil, chargingCost: Double? = nil, selectedPlug: EVIOPlug? = nil) {
        self.unitPrice = unitPrice
        self.tariff = tariff
        self.consumption = consumption
        self.mainCost = mainCost
        self.totalCost = totalCost
        self.iecCost = iecCost
        self.ivaCost = ivaCost
        self.estimatedCostForMobie = mobie
        self.ceme = ceme
        self.chargingTime = chargingTime
        self.fees = fees
        self.parkingCost = parkingCost
        self.charger = charger
        self.chargingCost = chargingCost
        self.selectedPlug = selectedPlug
    }
}

public struct EVIOEstimatedCostMobie: Codable {
    
    public let opcTariff: EVIOOpcTariff
    public let opcTariffKwh: EVIOOpcTariff
    public let tariff: EVIOPlanTariff
    public let tarCost: Double
    public let opcCost: Double
    public let opcCostKwh: Double
    public let activation: Double
    public let totalCeme: Double
    public let cemeTariffUom: String
    public let priceWithTaxesButNoVat: Double
    public let fees: EVIOFees
    public let tarTariff: EVIOTarTariff
    
    public init(opcTariff: EVIOOpcTariff, opcTariffKwh: EVIOOpcTariff, tarCost: Double, opcCost: Double, opcCostKwh: Double, planTariff: EVIOPlanTariff, activation: Double, totalCeme: Double, cemeTariffUom: String, priceWithTaxesButNoVat: Double, fees: EVIOFees, tarTariff: EVIOTarTariff) {
        self.opcTariffKwh = opcTariffKwh
        self.opcTariff = opcTariff
        self.tarCost = tarCost
        self.opcCost = opcCost
        self.opcCostKwh = opcCostKwh
        self.tariff = planTariff
        self.activation = activation
        self.totalCeme = totalCeme
        self.cemeTariffUom = cemeTariffUom
        self.priceWithTaxesButNoVat = priceWithTaxesButNoVat
        self.fees = fees
        self.tarTariff = tarTariff
    }
    
}

public struct EVIOOpcTariff: Codable {
    
    public let uom: String
    public let value: Double
    
    public init(uom: String, value: Double) {
        self.uom = uom
        self.value = value
    }
    
}

public struct EVIOEstimatedParkingCost: Codable {
    
    public let parkingDuringCharging: Double
    public let parkingAfterCharging: Double
    
    public init(parkingDuringCharging: Double, parkingAfterCharging: Double) {
        self.parkingDuringCharging = parkingDuringCharging
        self.parkingAfterCharging = parkingAfterCharging
    }
    
}
