//
//  CGFloat+CustomValues.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/12/2021.
//

import UIKit

/// # EXTENSION THAT ADDS PROPERTIES TO THE BUILT-IN SWIFT CGFLOAT CLASS
public extension CGFloat {
    
    // the default width for a group annotation on the map
    static let mapGroupAnnotationWidth: CGFloat = 37
    // the default height for a group annotation on the map
    static let mapGroupAnnotationHeight: CGFloat = 33
    // the default width for a group annotation on the map
    static let mapAnnotationWidth: CGFloat = 25
    // the default height for a group annotation on the map
    static let mapAnnotationHeight: CGFloat = 33
    // the default scale factor for the annotations on the map
    static let defaultScaleFactorForMapAnnotations = 1.3
    // default border width for the empty stars of the filters page rating bar
    static let filtersRatingBarEmptyBorderWidth: CGFloat = 2
    // default star size for the filters page rating bar
    static let filtersRatingBarStarSize: CGFloat = 23
    // default star size for charger summary and details page rating bar
    static let chargerSummaryAndDetailsRatingBarStarSize: CGFloat = 11
    // default star margin for the filters page rating bar
    static let filtersRatingBarStarMarging: CGFloat = 28
    static let insightsRatingBarStarMarging: CGFloat = 5
    // default star margin for the charger summary and details page rating bar
    static let chargerSummaryAndDetailsRatingBarStarMarging: CGFloat = .zero
    // default spacing for the element inside the filters lists component
    static let filtersListViewDefaultSpacing: CGFloat = 10
    // default spacing for the element inside the filters lists networks component
    static let filtersNetworksListViewDefaultSpacing: CGFloat = 20
    // default min value for the price slider
    static let priceSliderMinValue: CGFloat = 1
    // default max value for the price slider
    static let priceSliderMaxValue: CGFloat = 100
    // default min value for the power slider
    static let powerSliderMinValue: CGFloat = 1
    // default max value for the power slider
    static let powerSliderMaxValue: CGFloat = 400
    // default height margin for filters list item view
    static let heightMarginForFiltersListItemView: CGFloat = 20
    // default height for resizing an image
    static let imageResizeHeight: CGFloat = 1000
    static let insetForChargersListCard: CGFloat = 22
    
}
