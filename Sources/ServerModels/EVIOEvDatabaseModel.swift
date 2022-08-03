//
//  EVIOEvDatabaseModel.swift
//  WLModels
//
//  Created by Tiago Moreira on 15/04/2022.
//

import Foundation

public struct EVIOEvDatabaseModel: Codable {
    
    public var brand: String?
    public var model: String?
    public var version: String?
    public var evType: String?
    public var dateFrom: String?
    public var dateTo: String?
    public var imageContent: String?
    public var plugs: [EVIOEvPlug]?
    
}
