//
//  EVIOChargerListOfUsers.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOChargerListOfUsers: Codable {
    
    public var id: String?
    public var name: String?
    public var mobile: String?
    public var imageContent: String?
    public var userId: String?
    public var admin: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id", name, mobile, imageContent, userId, admin
    }
    
}
