//
//  EVIOChargingStationPriceDetailsRestrictionValuesChild.swift
//  
//
//  Created by Tiago Moreira on 29/09/2022.
//

import Foundation

public struct EVIOChargingStationPriceDetailsRestrictionValuesChild: Codable {
    
    public var start: String?
    public var end: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let start: String = try? container.decodeIfPresent(String.self, forKey: .start) {
            self.start = start
        } else if let start: Double = try? container.decodeIfPresent(Double.self, forKey: .start) {
            self.start = "\(start)"
        }
        if let end: String = try? container.decodeIfPresent(String.self, forKey: .end) {
            self.end = end
        } else if let end: Double = try? container.decodeIfPresent(Double.self, forKey: .end) {
            self.end = "\(end)"
        }
    }
    
}
