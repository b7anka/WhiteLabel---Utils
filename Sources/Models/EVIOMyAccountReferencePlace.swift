//
//  EVIOMyAccountReferencePlace.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/03/2022.
//

import Foundation

public struct EVIOMyAccountReferencePlace: Identifiable, Codable {
    
    public var id: String
    public var _id: String?
    public var name: String
    public var address: String
    public var type: EVIOReferencePlaceType
    public var geometry: EVIOGeometry?
    public var _address: EVIOAddress?
    public var isDefault: Bool
    
    public init(id: String?, name: String, address: String, type: EVIOReferencePlaceType, geometry: EVIOGeometry?, _address: EVIOAddress?, isDefault: Bool = false) {
        self.geometry = geometry
        self._address = _address
        self.id = UUID().uuidString
        self._id = id
        self.type = type
        self.name = name
        self.address = address
        self.isDefault = isDefault
    }
    
}
