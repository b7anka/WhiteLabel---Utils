//
//  EVIOOCPIPriceElement.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOOCPIPriceElement: Codable {
    
    public var priceComponents: [EVIOOCPIPriceComponent]?
    public var restrictions: EVIOOCPIPriceRestrictions?
    
    private enum CodingKeys: String, CodingKey {
        case priceComponents = "price_components", restrictions
    }
    
}
