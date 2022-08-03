//
//  EVIOCreateRating.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/05/2022.
//

import Foundation

public struct EVIOCreateRating: Codable {
    
    public var id: String?
    public var feedBack: [EVIORatingFeedback]
    public var chargerType: String?
    public var feedBackText: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case feedBack
        case chargerType
        case feedBackText
    }
    
    public init(id: String?, feedBack: [EVIORatingFeedback]?, chargerType: String?, feedBackText: String?) {
        self.id = id
        self.feedBack = feedBack ?? []
        self.chargerType = chargerType
        self.feedBackText = feedBackText
    }
    
    public func toDictionary() -> [String: Any] {
        guard let data: Data = try? JSONEncoder().encode(self), let dict: [String: Any] = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else { return [:] }
        return dict
    }
    
}
