//
//  EVIOParking.swift
//  evio
//
//  Created by Tiago Moreira on 15/06/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOParking: Codable {
    
    public var id: String?
    public var startDate: String?
    public var stopDate: String?
    public var duration: Double?
    public var price: Double?
    
    private enum CodingKeys: String, CodingKey {
        case startDate, stopDate, duration, price, id = "_id"
    }
    
}
