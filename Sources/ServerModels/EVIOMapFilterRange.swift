//
//  EVIOMapFilterRange.swift
//  WLModels
//
//  Created by Tiago Moreira on 24/12/2021.
//

import Foundation

public struct EVIOMapFilterRange: Codable {
    
    public var min: Double?
    public var max: Double?
    public var uom: String?
    
    public init() {
        self.min = nil
        self.max = nil
        self.uom = nil
    }
    
}
