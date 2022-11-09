//
//  EstimatedCostSliderView.swift
//  evio
//
//  Created by Tiago Moreira on 20/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI
import MultiSlider

public struct EstimatedCostSliderView: View {
    
    @Binding private var value: String?
    private let shouldStartDisabled: Bool
    private let sliderDidGetCreated: ((MultiSlider) -> Void)?
    private let isRangeSlider: Bool
    private let viewModel: EVIOMultisliderViewModel?
    private let didEndDrag: ((MultiSlider) -> Void)
    private let onChange: ((MultiSlider) -> Void)
    
    public init(value: Binding<String?>, shouldStartDisabled: Bool = true, sliderDidGetCreated: ((MultiSlider) -> Void)? = nil, isRangeSlider: Bool = true, viewModel: EVIOMultisliderViewModel? = nil, didEndDrag: @escaping (MultiSlider) -> Void, onChange: @escaping (MultiSlider) -> Void) {
        self._value = value
        self.sliderDidGetCreated = sliderDidGetCreated
        self.isRangeSlider = isRangeSlider
        self.viewModel = viewModel
        self.didEndDrag = didEndDrag
        self.shouldStartDisabled = shouldStartDisabled
        self.onChange = onChange
    }
    
    public var body: some View {
        ZStack {
            EVIOMultiSlider(viewModel: nil, shouldStartDisabled: self.shouldStartDisabled, isRangeSlider: self.isRangeSlider, minimumValue: 0, maximumValue: 100, didEndDrag: self.didEndDrag, onChange: self.onChange, sliderDidGetCreated: self.sliderDidGetCreated)
            if let value = self.value {
                Text(value)
                    .modifier(EvioFiltersSliderLabelsTextModifier(color: Color.primaryTextColor, lineLimit: 1, textAlignment: .center))
                    .padding(.horizontal, 15)
            }
        }
        
    }
}
