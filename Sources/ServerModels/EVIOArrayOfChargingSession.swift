//
//  EVIOArrayOfChargingSession.swift
//  WLModels
//
//  Created by Tiago Moreira on 28/04/2022.
//

import Foundation

public struct EVIOArrayOfChargingSession: Codable {
    
    public var chargingSession: [EVIOChargingSession]
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chargingSession = try container.decodeIfPresent([EVIOChargingSession].self, forKey: .chargingSession) ?? []
    }
    
}
