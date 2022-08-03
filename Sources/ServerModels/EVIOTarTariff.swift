//
//  EVIOTarTariff.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

public struct EVIOTarTariff: Codable {
    
    public var id: String?
    public var uom: String?
    public var tariffType: EVIOTariffType?
    public var voltageLevel: EVIOVoltageLevel?
    public var price: Double?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", uom, tariffType, voltageLevel, price
    }
    
    public init(id: String?, uom: String?, tariffType: EVIOTariffType?, voltageLevel: EVIOVoltageLevel?, price: Double?) {
        self.id = id
        self.uom = uom
        self.tariffType = tariffType
        self.voltageLevel = voltageLevel
        self.price = price
    }
    
}
