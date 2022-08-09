//
//  EVIOServerMessage.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOServerMessage: Codable {
    
    public var code: String?
    public var message: String?
    public var redirect: EVIOAlertRedirectType?
    public var amount: Double?
    public var charger: EVIOCharger?
    public var statusCode: Int?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.message = try? container.decodeIfPresent(String.self, forKey: .message)
        self.redirect = try container.decodeIfPresent(EVIOAlertRedirectType.self, forKey: .redirect)
        self.amount = try container.decodeIfPresent(Double.self, forKey: .amount)
        self.charger = try container.decodeIfPresent(EVIOCharger.self, forKey: .charger)
        self.statusCode = try container.decodeIfPresent(Int.self, forKey: .statusCode)
    }
    
    public init(code: String?, message: String?, redirect: EVIOAlertRedirectType?, amount: Double?, charger: EVIOCharger?, statusCode: Int? = nil) {
        self.code = code
        self.message = message
        self.redirect = redirect
        self.amount = amount
        self.charger = charger
        self.statusCode = statusCode
    }
    
}
