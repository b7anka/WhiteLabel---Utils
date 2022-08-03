//
//  EVIORating.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 31/12/2021.
//

import SwiftUI
import Cosmos

public struct EVIORating: View {
    
    private let rating: Double
    private let viewModel: EVIOStarRatingViewModel?
    private let totalStars: Int
    private let starSize: CGFloat
    private let filledColor: UIColor
    private let emptyColor: UIColor
    private let emptyBorderColor: UIColor
    private let emptyBorderWidth: CGFloat
    private let filledBorderColor: UIColor
    private let starMargin: CGFloat
    private let fillMode: StarFillMode
    private let isDisabled: Bool
    private let size: CGSize
    private let didUpdateRating: ((Double) -> Void)
    
    public init(rating: Double = .zero, viewModel: EVIOStarRatingViewModel? = nil, totalStars: Int = .filtersRatingBarTotalStars, starSize: CGFloat = .filtersRatingBarStarSize, filledColor: UIColor = Color.tertiaryBackground.uiColor, emptyColor: UIColor = .clear, emptyBorderColor: UIColor = Color.tertiaryTextColor.uiColor, emptyBorderWidth: CGFloat = .filtersRatingBarEmptyBorderWidth, filledBorderColor: UIColor = Color.tertiaryTextColor.uiColor, starMargin: CGFloat = .filtersRatingBarStarMarging, fillMode: StarFillMode = .half, isDisabled: Bool = false, size: CGSize = .ratingStarSizeForFilters, didUpdateRating: @escaping (Double) -> Void) {
        self.rating = rating
        self.viewModel = viewModel
        self.totalStars = totalStars
        self.starSize = starSize
        self.filledColor = filledColor
        self.emptyColor = emptyColor
        self.emptyBorderColor = emptyBorderColor
        self.emptyBorderWidth = emptyBorderWidth
        self.filledBorderColor = filledBorderColor
        self.starMargin = starMargin
        self.fillMode = fillMode
        self.isDisabled = isDisabled
        self.size = size
        self.didUpdateRating = didUpdateRating
        
    }
    
    public var body: some View {
        EVIORatingRepresentable(viewModel: self.viewModel, rating: self.rating, totalStars: self.totalStars, starSize: self.starSize, filledColor: self.filledColor, emptyColor: self.emptyColor, emptyBorderColor: self.emptyBorderColor, emptyBorderWidth: self.emptyBorderWidth, filledBorderColor: self.filledBorderColor, starMargin: self.starMargin, fillMode: self.fillMode, isDisabled: self.isDisabled, didUpdateRating: self.didUpdateRating)
            .frame(width: self.size.width, height: self.size.height)
    }
    
}
