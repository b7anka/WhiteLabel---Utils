//
//  EVIOChargerListOfGroups.swift
//  WLModels
//
//  Created by Tiago Moreira on 02/12/2021.
//

import Foundation

public struct EVIOChargerListOfGroups: Codable {
    
    public var id: String?
    public var name: String?
    public var listOfUsers: [EVIOChargerListOfUsers]?
    public var imageContent: String?
    public var createUser: String?
    public var groupId: String?
    
    private enum CodingKeys: String, CodingKey {
        case id = "_id", name, listOfUsers, imageContent, createUser, groupId
    }
    
}
