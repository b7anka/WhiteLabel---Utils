//
//  EVIOCreateNotification.swift
//  WLModels
//
//  Created by Tiago Moreira on 05/04/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOCreateNotification: Codable {
    
    // a string with a topic value which is the default for topic
    public static let topic: String = "topic"
    
    var topic: String?
    var chargerId: String?
    var hwId: String?
    var plugId: String?
    var chargerType: String?
    
    private enum CodingKeys: String, CodingKey {
        case chargerId, hwId, plugId, topic, chargerType
    }
    
    public init(topic: String = EVIOCreateNotification.topic, chargerId: String?, hwId: String?, plugId: String?, chargerType: String?) {
        self.topic = topic
        self.chargerId = chargerId
        self.hwId = hwId
        self.plugId = plugId
        self.chargerType = chargerType
    }
    
    public func toDictionary() -> [String: Any] {
        do {
            let data = try JSONEncoder().encode(self)
            if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
            return [:]
        }catch {
            return [:]
        }
    }
    
}
