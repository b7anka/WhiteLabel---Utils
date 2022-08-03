//
//  EVIOMyAccountReferencePlace.swift
//  
//
//  Created by Tiago Moreira on 28/07/2022.
//

import Foundation

public extension EVIOMyAccountReferencePlace {
    
    private static let homeRef: EVIOMyAccountReferencePlace = EVIOMyAccountReferencePlace(id: nil, name: EVIOLanguageManager.shared.language.myAccountHome, address: EVIOLanguageManager.shared.language.myAccountNoHome, type: .home, geometry: nil, _address: nil, isDefault: true)
    
    private static let workRef: EVIOMyAccountReferencePlace = EVIOMyAccountReferencePlace(id: nil, name: EVIOLanguageManager.shared.language.myAccountWork, address: EVIOLanguageManager.shared.language.myAccountNoWork, type: .work, geometry: nil, _address: nil, isDefault: true)
    
    static let defaultRefPlaces: [EVIOMyAccountReferencePlace] = [Self.homeRef, Self.workRef]
    
    static func imageForReferenceType(type: EVIOReferencePlaceType) -> String {
        switch type {
        case .work:
            return .workRefPlaceIcon
        case .home:
            return .homeRefPlaceIcon
        default:
            return .otherRefPlaceIcon
        }
    }
    
}
