//
//  EVIOMultislider.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI
import MultiSlider
import Combine

public final class EVIOMultislider: MultiSlider {
    
    private var viewModel: EVIOMultisliderViewModel?
    private let shouldStartDisabled: Bool
    private let isRangeSlider: Bool
    public var didEndDrag: ((MultiSlider) -> Void)?
    public var onChange: ((MultiSlider) -> Void)?
    private var cancellables: Set<AnyCancellable>
    
    public init(viewModel: EVIOMultisliderViewModel? = nil, shouldStartDisabled: Bool, isRangeSlider: Bool, minimumValue: CGFloat, maximumValue: CGFloat, trackWidth: CGFloat, outerTrackColor: Color, didEndDrag: ((MultiSlider) -> Void)?, onChange: ((MultiSlider) -> Void)?) {
        self.viewModel = viewModel
        self.shouldStartDisabled = shouldStartDisabled
        self.isRangeSlider = isRangeSlider
        self.didEndDrag = didEndDrag
        self.onChange = onChange
        self.cancellables = []
        super.init(frame: .zero)
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.trackWidth = trackWidth
        self.outerTrackColor = outerTrackColor.uiColor
        self.addTarget(self, action: #selector(self.sliderOnChange), for: .valueChanged)
        self.addTarget(self, action: #selector(self.sliderDidEndDrag), for: .touchUpInside)
        self.isVertical = false
        self.isContinuous = true
        self.isValueLabelRelative = false
        self.showsThumbImageShadow = false
        self.minimumValue = self.minimumValue
        self.maximumValue = self.maximumValue
        self.trackWidth = self.trackWidth
        self.hasRoundTrackEnds = true
        self.keepsDistanceBetweenThumbs = false
        self.thumbCount = 2
        if !isRangeSlider {
            self.disabledThumbIndices = [0]
            self.thumbViews[0].image = shouldStartDisabled ? Self.greyishThumbImage : Self.greenishThumbImage
            self.thumbViews[1].image = Self.defaultThumbImage
            guard let blurView = self.thumbViews.first?.subviews.first(where: {$0.tag == Self.blurViewTag}) else { return }
            blurView.removeFromSuperview()
        } else {
            self.thumbImage = Self.defaultThumbImage
        }
        self.tintColor = shouldStartDisabled ? Color.sliderDisabledColor.uiColor : Color.sliderEnabledColor.uiColor
        self.value = [minimumValue, maximumValue]
        self.setupViewModelListeneres()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        self.cancellables.forEach { cancelable in
            cancelable.cancel()
        }
        self.cancellables.removeAll()
    }
    
    private func setupViewModelListeneres() {
        self.viewModel?.$value
        .sink(receiveValue: { [weak self] value in
            guard let self = self else { return }
            self.value = value
        })
        .store(in: &cancellables)
        
        self.viewModel?.$color
        .sink(receiveValue: { [weak self] color in
            guard let self = self else { return }
            if self.isRangeSlider {
                self.thumbImage = Self.defaultThumbImage
            } else {
                self.thumbViews[0].image = color == .sliderDisabledColor ? Self.greyishThumbImage : Self.greenishThumbImage
            }
            self.tintColor = color.uiColor
        })
        .store(in: &cancellables)
    }
    
    @objc private func sliderDidEndDrag(_ slider: MultiSlider) {
        if self.shouldStartDisabled {
            slider.tintColor = Color.sliderEnabledColor.uiColor
        }
        if self.isRangeSlider {
            slider.thumbImage = Self.defaultThumbImage
        } else {
            slider.thumbViews[0].image = Self.greenishThumbImage
        }
        if let didEndDrag = self.didEndDrag {
            didEndDrag(slider)
        }
    }
    
    @objc private func sliderOnChange(_ slider: MultiSlider) {
        if self.shouldStartDisabled {
            slider.tintColor = Color.sliderEnabledColor.uiColor
        }
        if self.isRangeSlider {
            slider.thumbImage = Self.defaultThumbImage
        } else {
            slider.thumbViews[0].image = Self.greenishThumbImage
        }
        if let onChange = self.onChange {
            onChange(slider)
        }
    }
    
}

public final class EVIOMultisliderViewModel: ObservableObject {
    
    @Published public var value: [CGFloat]
    @Published public var color: Color
    
    public init(value: [CGFloat], color: Color) {
        self.value = value
        self.color = color
    }
    
}

public extension EVIOMultislider {
    
    static let defaultThumbImage: UIImage = .circle()!
    static let greyishThumbImage: UIImage = .circle(diameter: 29, width: 0.5, color: Color.sliderDisabledThumbColor.uiColor, fill: Color.sliderDisabledThumbColor.uiColor)!
    static let greenishThumbImage: UIImage = .circle(diameter: 29, width: 0.5, color: Color.sliderEnabledColor.uiColor, fill: Color.sliderEnabledColor.uiColor)!
    static var blurViewTag: Int { return 898_989 }
    static let defaultSlider: EVIOMultislider = EVIOMultislider(shouldStartDisabled: false, isRangeSlider: false, minimumValue: 1, maximumValue: 100, trackWidth: 30, outerTrackColor: .primaryBackground, didEndDrag: nil, onChange: nil)
    static let defaultRangeSlider: EVIOMultislider = EVIOMultislider(shouldStartDisabled: false, isRangeSlider: true, minimumValue: 1, maximumValue: 100, trackWidth: 30, outerTrackColor: .primaryBackground, didEndDrag: nil, onChange: nil)
    
}
