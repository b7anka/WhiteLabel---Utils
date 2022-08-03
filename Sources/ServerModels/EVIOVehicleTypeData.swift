//
//  EVIOVehicleTypeData.swift
//  WLModels
//
//  Created by Tiago Moreira on 03/01/2022.
//

import Foundation

public struct EVIOVehicleTypeData: Codable {
    
    public let vehicleType: EVIOVehicleType
    public let translationKey: String
    public let image: String
    public let imageSelected: String
    public let imageForChargerDetails: String
    
    public init(vehicleType: EVIOVehicleType, translationKey: String, image: String, imageSelected: String, imageForChargerDetails: String) {
        self.vehicleType = vehicleType
        self.translationKey = translationKey
        self.image = image
        self.imageSelected = imageSelected
        self.imageForChargerDetails = imageForChargerDetails
    }
    
}
