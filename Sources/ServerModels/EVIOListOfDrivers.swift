//
//  EVIOListOfDrivers.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

public struct EVIOListOfDrivers: Codable, Hashable {
    
    public var id: String?
    public var userId: String?
    public var driverId: String?
    public var groupId: String?
    public var paymentBy: EVIOPaymentBy?
    public var name: String?
    public var internationalPrefix: String?
    public var mobile: String?
    public var imageContent: String?
    public var period: EVIOPeriodType?
    public var listOfDrivers: Set<EVIOListOfDrivers>?
    
    private enum CodingKeys: String, CodingKey {
        case userId, groupId, paymentBy = "paymenteBy", period, id = "_id", name, internationalPrefix, mobile, imageContent, listOfDrivers, driverId
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(self.id)
    }
    
    public static func == (lhs: EVIOListOfDrivers, rhs: EVIOListOfDrivers) -> Bool {
        return lhs.id == rhs.id
    }
    
}
