//
//  EVIOCommandResponse.swift
//  WLModels
//
//  Created by Tiago Moreira on 28/04/2022.
//

import Foundation

public struct EVIOCommandResponse: Codable {
    
    public var status: EVIOStatus?
    public var message: String?
    public var sessionId: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decodeIfPresent(EVIOStatus.self, forKey: .status)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        if let sessionId = try? container.decodeIfPresent(UInt64.self, forKey: .sessionId) {
            self.sessionId = "\(sessionId)"
        } else if let sessionId = try? container.decodeIfPresent(String.self, forKey: .sessionId) {
            self.sessionId = sessionId
        }
    }
    
}
