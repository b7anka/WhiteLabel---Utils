//
//  EVIOMultisliderSUI.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI
import MultiSlider

public struct EVIOMultiSlider: View {
    
    private let viewModel: EVIOMultisliderViewModel?
    private let shouldStartDisabled: Bool
    private let isRangeSlider: Bool
    private let minimumValue: CGFloat
    private let maximumValue: CGFloat
    private let trackWidth: CGFloat
    private let outerTrackColor: Color
    private let didEndDrag: ((MultiSlider) -> Void)?
    private let onChange: ((MultiSlider) -> Void)?
    private let sliderDidGetCreated: ((MultiSlider) -> Void)?
    
    public init(viewModel: EVIOMultisliderViewModel?, shouldStartDisabled: Bool = true, isRangeSlider: Bool = false, minimumValue: CGFloat = 1, maximumValue: CGFloat = 100, trackWidth: CGFloat = 30, outerTrackColor: Color = .primaryBackground, didEndDrag: ((MultiSlider) -> Void)? = nil, onChange: ((MultiSlider) -> Void)? = nil, sliderDidGetCreated: ((MultiSlider) -> Void)?) {
        self.viewModel = viewModel
        self.shouldStartDisabled = shouldStartDisabled
        self.isRangeSlider = isRangeSlider
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.trackWidth = trackWidth
        self.outerTrackColor = outerTrackColor
        self.didEndDrag = didEndDrag
        self.onChange = onChange
        self.sliderDidGetCreated = sliderDidGetCreated
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.primaryTextColor, lineWidth: 1)
            .frame(height: 36)
            .overlay(
                EVIOMultisliderRepresentable(viewModel: self.viewModel, shouldStartDisabled: self.shouldStartDisabled, isRangeSlider: self.isRangeSlider, minimumValue: self.minimumValue, maximumValue: self.maximumValue, trackWidth: self.trackWidth, outerTrackColor: self.outerTrackColor, didEndDrag: self.didEndDrag, onChange: self.onChange, sliderDidGetCreated: self.sliderDidGetCreated)
                    .padding(.horizontal, 3)
            )
    }
    
}
