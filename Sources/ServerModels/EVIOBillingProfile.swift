//
//  EVIOBillingProfile.swift
//  WLModels
//
//  Created by Tiago Moreira on 19/05/2022.
//

import Foundation

public struct EVIOBillingProfile: Codable, Identifiable {
    
    public var id: UUID = UUID()
    public var ´id´: String?
    public var name: String?
    public var userId: String?
    public var nif: String?
    public var billingName: String?
    public var email: String?
    public var imageContent: String?
    public var mobile: String?
    public var internationalPrefix: String?
    public var billingAddress: EVIOBillingAddress?
    public var billingPeriod: String?
    public var finalConsumer: Bool?
    
    private enum CodingKeys: String, CodingKey {
        case ´id´ = "_id", nif, billingAddress, billingName, email, imageContent, mobile, internationalPrefix, name, billingPeriod, finalConsumer
    }
    
}

extension EVIOBillingProfile: Equatable {
    
    public static func == (lhs: EVIOBillingProfile, rhs: EVIOBillingProfile) -> Bool {
        return lhs.id == rhs.id
    }
    
}
