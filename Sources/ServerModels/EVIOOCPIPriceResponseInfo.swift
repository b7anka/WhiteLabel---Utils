//
//  EVIOOCPIPriceResponseInfo.swift
//  WLModels
//
//  Created by João Moreira on 04/08/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOOCPIPriceResponseInfo: Codable {
    
    public var quantity: Double?
    public var cost: Double?
    public var component: EVIOOCPIPriceComponent?
    public var restrictions: EVIOOCPIPriceResponseRestrictions?
    
}
