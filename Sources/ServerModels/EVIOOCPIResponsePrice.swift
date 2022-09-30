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
    public var total: Double?
    
    private enum CodingKeys: String, CodingKey {
        case flat, energy, time, parking, vat, totalCost = "total_cost", currency, opc, ceme, fees, total
    }
    
}
