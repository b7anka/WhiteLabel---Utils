//
//  EVIOOCPIPriceComponent.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOOCPIPriceComponent: Codable {
    
    public var type: EVIORoamingTariffDetailsType?
    public var price: Double?
    public var stepSize: Double?
    public var vat: Double?
    public var id: String?
    
    enum CodingKeys: String, CodingKey {
        case type, price, stepSize = "step_size", vat, id = "_id"
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.type?.rawValue.uppercased(), forKey: .type)
        try container.encodeIfPresent(self.price, forKey: .price)
        try container.encodeIfPresent(self.stepSize, forKey: .stepSize)
        try container.encodeIfPresent(self.vat, forKey: .vat)
        try container.encodeIfPresent(self.id, forKey: .id)
    }
    
}
