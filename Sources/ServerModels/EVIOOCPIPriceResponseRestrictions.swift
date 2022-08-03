//
//  EVIOOCPIPriceResponserestrictions.swift
//  WLModels
//
//  Created by João Moreira on 04/08/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOOCPIPriceResponseRestrictions: Codable {
    
    public var maxKhw: Double?
    
    private enum CodingKeys: String, CodingKey {
        case maxKhw = "max_kwh"
    }
    
}
