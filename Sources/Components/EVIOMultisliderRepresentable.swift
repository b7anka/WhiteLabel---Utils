//
//  EVIOMultisliderRepresentable.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI
import MultiSlider

public struct EVIOMultisliderRepresentable: UIViewRepresentable {
    
    private let viewModel: EVIOMultisliderViewModel?
    private let shouldStartDisabled: Bool
    private let isRangeSlider: Bool
    private let minimumValue: CGFloat
    private let maximumValue: CGFloat
    private let trackWidth: CGFloat
    private let outerTrackColor: Color
    private let didEndDrag: ((MultiSlider) -> Void)?
    private let onChange: ((MultiSlider) -> Void)?
    
    public init(viewModel: EVIOMultisliderViewModel?, shouldStartDisabled: Bool, isRangeSlider: Bool, minimumValue: CGFloat, maximumValue: CGFloat, trackWidth: CGFloat, outerTrackColor: Color, didEndDrag: ((MultiSlider) -> Void)? = nil, onChange: ((MultiSlider) -> Void)? = nil) {
        self.viewModel = viewModel
        self.shouldStartDisabled = shouldStartDisabled
        self.isRangeSlider = isRangeSlider
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.trackWidth = trackWidth
        self.outerTrackColor = outerTrackColor
        self.didEndDrag = didEndDrag
        self.onChange = onChange
    }
    
    public func makeUIView(context: Context) -> EVIOMultislider {
        return EVIOMultislider(viewModel: self.viewModel, shouldStartDisabled: self.shouldStartDisabled, isRangeSlider: self.isRangeSlider, minimumValue: self.minimumValue, maximumValue: self.maximumValue, trackWidth: self.trackWidth, outerTrackColor: self.outerTrackColor, didEndDrag: self.didEndDrag, onChange: self.onChange)
    }
    
    public func updateUIView(_ uiView: EVIOMultislider, context: Context) {}
    
}
