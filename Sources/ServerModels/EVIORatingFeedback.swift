//
//  EVIORatingFeedback.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/05/2022.
//

import Foundation

public struct EVIORatingFeedback: Codable {
    
    public var questionCode: String?
    public var value: Double?
    
    public init(questionCode: String?, value: Double?) {
        self.questionCode = questionCode
        self.value = value
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}

extension EVIORatingFeedback: Equatable {
    
    public static func == (lhs: EVIORatingFeedback, rhs: EVIORatingFeedback) -> Bool {
        return lhs.questionCode == rhs.questionCode
    }
    
}
