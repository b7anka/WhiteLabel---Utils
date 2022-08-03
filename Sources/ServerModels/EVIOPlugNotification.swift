//
//  EVIOPlugNotification.swift
//  WLModels
//
//  Created by Tiago Moreira on 20/01/2022.
//

import Foundation

public struct EVIOPlugNotification: Codable {
    
    public var isToSend: Bool?
    public var sent: Bool?
    public var id: String?
    public var chargerId: String?
    public var hwId: String?
    public var plugId: String?
    public var userId: String?
    
    private enum CodingKeys: String, CodingKey {
        case isToSend, sent, chargerId, id = "_id", hwId, plugId, userId
    }
    
}
