//
//  EVIORatingRepresentable.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI
import Cosmos

public struct EVIORatingRepresentable: UIViewRepresentable {
    
    private let viewModel: EVIOStarRatingViewModel?
    private let rating: Double
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
    private let didUpdateRating: ((Double) -> Void)
    
    public init(viewModel: EVIOStarRatingViewModel?, rating: Double, totalStars: Int, starSize: CGFloat, filledColor: UIColor, emptyColor: UIColor, emptyBorderColor: UIColor, emptyBorderWidth: CGFloat, filledBorderColor: UIColor, starMargin: CGFloat, fillMode: StarFillMode, isDisabled: Bool, didUpdateRating: @escaping (Double) -> Void) {
        self.viewModel = viewModel
        self.rating = rating
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
        self.didUpdateRating = didUpdateRating
    }
    
    public func makeUIView(context: Context) -> EVIOStarRating {
        return EVIOStarRating(viewModel: self.viewModel, didUpdateRating: self.didUpdateRating, totalStars: self.totalStars, starSize: self.starSize, filledColor: self.filledColor, emptyColor: self.emptyColor, emptyBorderColor: self.emptyBorderColor, emptyBorderWidth: self.emptyBorderWidth, filledBorderColor: self.filledColor, starMargin: self.starMargin, fillMode: self.fillMode, disabled: self.isDisabled, rating: self.rating)
    }
    
    public func updateUIView(_ ratingView: EVIOStarRating, context: Context) { }
    
}
