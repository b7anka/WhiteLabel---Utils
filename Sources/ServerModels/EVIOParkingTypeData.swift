//
//  EVIOParkingTypeData.swift
//  WLModels
//
//  Created by Tiago Moreira on 03/01/2022.
//

import Foundation

public struct EVIOParkingTypeData: Codable {
    
    public let parkingType: EVIOParkingType
    public let translationKey: String
    public let image: String
    public let imageSelected: String
    public let imageForChargerDetails: String
    
    public init(parkingType: EVIOParkingType, translationKey: String, image: String, imageSelected: String, imageForChargerDetails: String) {
        self.parkingType = parkingType
        self.translationKey = translationKey
        self.image = image
        self.imageSelected = imageSelected
        self.imageForChargerDetails = imageForChargerDetails
    }
    
}
