//
//  EVIOConnectorTypeData.swift
//  WLModels
//
//  Created by Tiago Moreira on 03/01/2022.
//

import Foundation

public struct EVIOConnectorTypeData: Codable {
    
    public let name: String
    public let translationKey: String
    public let image: String
    public let selectedImage: String
    public let selectedImageNoBackground: String
    public let summaryImage: String
    public let summaryImageSelected: String
    public let alias: [String]
    public let voltageType: EVIOConnectorTypeVoltage
    
    init(name: String, translationKey: String, image: String, selectedImage: String, selectedImageNoBackground: String, summaryImage: String, summaryImageSelected: String, alias: [String], voltageType: EVIOConnectorTypeVoltage) {
        self.name = name
        self.translationKey = translationKey
        self.image = image
        self.selectedImage = selectedImage
        self.selectedImageNoBackground = selectedImageNoBackground
        self.summaryImage = summaryImage
        self.summaryImageSelected = summaryImageSelected
        self.alias = alias
        self.voltageType = voltageType
    }
    
}
