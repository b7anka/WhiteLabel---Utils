//
//  CGSize+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 13/12/2021.
//

import UIKit

/// # EXTENSION THAT ADDS PROPERTIES AND / OR FUNCTIONS TO THE SWIFT'S BUILT IN CGSIZE STRUCT
public extension CGSize {
    
    // represents the size of a map's marker charger
    static let chargerAnnotationSize: CGSize = .init(width: .mapAnnotationWidth, height: .mapAnnotationHeight)
    // represents the size of a map's marker group of chargers
    static let chargerGroupAnnotationSize: CGSize = .init(width: .mapGroupAnnotationWidth, height: .mapGroupAnnotationHeight)
    // represents the rating bar size for the filters page
    static let ratingStarSizeForFilters: CGSize = CGSize(width: 227, height: 23)
    static let ratingStarSizeForInsights: CGSize = CGSize(width: 150, height: 23)
    // represents the default list item size for the filters list component
    static let filtersDefaultListViewItemSize: CGSize = CGSize(width: 79, height: 79)
    // represents the default list item size for the filters list networks component
    static let filtersDefaultNetworksListViewItemSize: CGSize = CGSize(width: 56, height: 56)
    // represents the rating bar size for the charger summary and details page
    static let ratingStarSizeForChargerSummary: CGSize = CGSize(width: 60, height: 11)
}
