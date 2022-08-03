//
//  EVIOTariff.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOTariff: Codable {
    
    public var id: String?
    public var groupName: String?
    public var groupId: String?
    public var fleetName: String?
    public var fleetId: String?
    public var imageContent: String?
    public var tariffId: String?
    public var tariffType: EVIOTariffType?
    public var name: String?
    public var tariff: EVIOSTariff?
    public var billingType: EVIOBillingType?
    
    enum CodingKeys: String, CodingKey {
        case groupName, groupId, tariffId, id = "_id", tariffType, tariff, imageContent, name, billingType, fleetName, fleetId
    }
    
}

extension EVIOTariff: Equatable {
    
    public static func == (lhs: EVIOTariff, rhs: EVIOTariff) -> Bool {
        return lhs.id == rhs.id
    }
    
}
