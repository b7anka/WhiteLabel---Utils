//
//  EVIOMyChargersSession.swift
//  WLModels
//
//  Created by Tiago Moreira on 21/04/2022.
//

import Foundation

public struct EVIOMyChargersSession: Codable {
    
    public var id: String?
    public var name: String?
    public var imageContent: String?
    public var listChargers: [EVIOCharger]?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case imageContent
        case listChargers
    }
    
}

extension EVIOMyChargersSession: Equatable {
    
    public static func == (lhs: EVIOMyChargersSession, rhs: EVIOMyChargersSession) -> Bool {
        return lhs.id == rhs.id
    }
    
}
