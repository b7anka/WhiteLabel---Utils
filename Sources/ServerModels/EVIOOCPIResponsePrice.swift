//
//  EVIOOCPIResponsePrice.swift
//  WLModels
//
//  Created by João Moreira on 04/08/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOOCPIResponsePrice: Codable {
    
    public var flat: EVIOOCPIPriceResponseItem?
    public var energy: EVIOOCPIPriceResponseItem?
    public var time: EVIOOCPIPriceResponseItem?
    public var parking: EVIOOCPIPriceResponseItem?
    public var vat: EVIOVat?
    public var totalCost: EVIOTotalPrice?
    public var currency: String?
    public var opc: Double?
    public var ceme: Double?
    public var fees: Double?
    public var total: EVIOTotalPrice?
    
    private enum CodingKeys: String, CodingKey {
        case flat, energy, time, parking, vat, totalCost = "total_cost", currency, opc, ceme, fees, total
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flat = try container.decodeIfPresent(EVIOOCPIPriceResponseItem.self, forKey: .flat)
        self.energy = try container.decodeIfPresent(EVIOOCPIPriceResponseItem.self, forKey: .energy)
        self.time = try container.decodeIfPresent(EVIOOCPIPriceResponseItem.self, forKey: .time)
        self.parking = try container.decodeIfPresent(EVIOOCPIPriceResponseItem.self, forKey: .parking)
        self.vat = try container.decodeIfPresent(EVIOVat.self, forKey: .vat)
        self.totalCost = try container.decodeIfPresent(EVIOTotalPrice.self, forKey: .totalCost)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
        self.opc = try container.decodeIfPresent(Double.self, forKey: .opc)
        self.ceme = try container.decodeIfPresent(Double.self, forKey: .ceme)
        self.fees = try container.decodeIfPresent(Double.self, forKey: .fees)
        if let total = try? container.decodeIfPresent(Double.self, forKey: .total) {
            self.total = EVIOTotalPrice(inclVat: total)
        } else {
            self.total = try container.decodeIfPresent(EVIOTotalPrice.self, forKey: .total)
        }
    }
    
}
