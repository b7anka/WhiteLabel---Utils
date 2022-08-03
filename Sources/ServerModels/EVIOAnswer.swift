//
//  EVIOAnswer.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/05/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOAnswer: Codable {
    
    public var id: String?
    public var answer: String?
    public var active: Bool
    
    private enum CodingKeys: String, CodingKey {
        case answer, active, id = "_id"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.answer = try container.decodeIfPresent(String.self, forKey: .answer)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active) ?? false
    }
    
    public func toDictionary() -> [String: Any] {
        if let data = try? JSONEncoder().encode(self) {
            if let dict = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
        }
        return [:]
    }

}
