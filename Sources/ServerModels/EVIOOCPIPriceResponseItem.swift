//
//  EVIOOCPIPriceResponseItem.swift
//  WLModels
//
//  Created by João Moreira on 04/08/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOOCPIPriceResponseItem: Codable {
    
    public var price: Double?
    public var info: [EVIOOCPIPriceResponseInfo] = []
    public var label: EVIOAmount?
    
}
