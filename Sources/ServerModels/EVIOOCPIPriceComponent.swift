//
//  EVIOOCPIPriceComponent.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOOCPIPriceComponent: Codable {
    
    public var type: String?
    public var price: Double?
    public var stepSize: Double?
    
    enum CodingKeys: String, CodingKey {
        case type, price, stepSize = "step_size"
    }
    
}
