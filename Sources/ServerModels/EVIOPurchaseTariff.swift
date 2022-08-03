//
//  EVIOPurchaseTariff.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/05/2022.
//

import Foundation

public struct EVIOPurchaseTariff: Codable {
    
    public var id: String?
    public var weekSchedule: [EVIOWeekSchedule]?
    public var tariffType, name, purchaseTariffDescription, userID: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case weekSchedule, tariffType, name
        case purchaseTariffDescription = "description"
        case userID = "userId"
    }
    
}
