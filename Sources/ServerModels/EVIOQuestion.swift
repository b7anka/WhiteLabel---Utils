//
//  EVIOQuestion.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/05/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public final class EVIOQuestion: Codable {
    
    public var id: UUID
    public var _id: String?
    public var active: Bool
    public var questionCode: String?
    public var type: String?
    public var answers: [EVIOAnswer]
    public var createUser: String?
    public var selected: Bool {
        didSet {
            self.id = UUID()
        }
    }
    public var rating: Double
    
    private enum CodingKeys: String, CodingKey {
        case _id, active, questionCode, type, answers, createUser
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self._id = try container.decodeIfPresent(String.self, forKey: ._id)
        self.questionCode = try container.decodeIfPresent(String.self, forKey: .questionCode)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.createUser = try container.decodeIfPresent(String.self, forKey: .createUser)
        self.active = try container.decodeIfPresent(Bool.self, forKey: .active) ?? false
        self.answers = try container.decodeIfPresent([EVIOAnswer].self, forKey: .answers) ?? []
        self.selected = false
        self.rating = .zero
    }
    
    public func toDeleteQuestion() -> [String: Any] {
        return [
            "_id": self._id as Any
        ]
    }
    
    public func toDictionary() -> [String: Any] {
        if let data = try? JSONEncoder().encode(self) {
            if var dict = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                dict.removeValue(forKey: CodingKeys._id.rawValue)
                return dict
            }
        }
        return [:]
    }
    
}

extension EVIOQuestion: Equatable {
    
    public static func == (lhs: EVIOQuestion, rhs: EVIOQuestion) -> Bool {
        return lhs.id == rhs.id
    }

}
