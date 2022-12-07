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
    
}
