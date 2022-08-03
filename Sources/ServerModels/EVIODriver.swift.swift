//
//  EVIODriver.swift.swift
//  WLModels
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation

public struct EVIODriver: Codable, Hashable, Identifiable {
    
    public var driverId: String?
    public var id: String?
    public var name: String?
    public var mobile: String?
    public var internationalPrefix: String?
    public var imageContent: String?
    public var active: Bool?
    public var admin: Bool?
    public var registered: Bool?
    public var isGroup: Bool?
    public var payment: String?
    
}
