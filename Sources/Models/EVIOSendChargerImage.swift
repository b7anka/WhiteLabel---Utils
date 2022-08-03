//
//  EVIOSendChargerImage.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 28/04/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import Foundation

public struct EVIOSendChargerImage: Codable {
    
    public var chargerId: String?
    public var hwId: String?
    public var chargerType: String?
    public var imageContent: String?
    public var createdBy: String?
    public var geometry: EVIOGeometry?
    public var address: EVIOAddress?
    
    private enum CodingKeys: String, CodingKey {
        case chargerId, hwId, chargerType, imageContent, createdBy, geometry, address
    }
    
    public init(chargerId: String? = nil, hwId: String? = nil, chargerType: String? = nil, imageContent: String? = nil, createdBy: String? = nil, geometry: EVIOGeometry? = nil, address: EVIOAddress? = nil) {
        self.chargerId = chargerId
        self.hwId = hwId
        self.chargerType = chargerType
        self.imageContent = imageContent
        self.createdBy = createdBy
        self.geometry = geometry
        self.address = address
    }
    
    public func toDictionary() -> [String: Any] {
        do {
            let data = try JSONEncoder().encode(self)
            if let dict = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return dict
            }
            return [:]
        } catch {
            return [:]
        }
    }
    
}
