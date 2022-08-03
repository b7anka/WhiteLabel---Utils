//
//  EVIOAutoStop.swift
//  WLModels
//
//  Created by João Tiago Ferreira Moreira on 10/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOAutoStop: Codable {
    
    public var uom: String?
    public var value: Double?
    
    public enum CodingKeys: String, CodingKey {
        case uom, value
    }
    
}
