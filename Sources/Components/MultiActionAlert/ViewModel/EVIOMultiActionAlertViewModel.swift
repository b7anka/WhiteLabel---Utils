//
//  EVIOMultiActionAlertViewModel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import SwiftUI

public final class EVIOMultiActionAlertViewModel: ObservableObject {
    
    // MARK: - PUBLISHED PROPERTIES
    @Published public var showAnimation: Bool
    
    // MARK: - EVIO ALERT STRUCT
    private struct EVIOAlertHeights {
        static let minimumHeight: CGFloat = 144.0
        static let minimumHeightWithTitle: CGFloat = 174.0
        static let maximumHeight: CGFloat = UIScreen.main.bounds.height * 0.5
        static let heightForLine: CGFloat = 15.0
    }
    
    // MARK: - PUBLIC PROPERTIES
    public var message: String
    public var title: String?
    public var negativeActionTitle: String
    public var positiveActionTitle: String
    public var effectType: EVIOAlertEffectType
    public var alertType: EVIOAlertTypeAlert
    public var springAnimationValue: EVIOAlertSpringAnimation
    
    // MARK: - COMPUTED PROPERTIES
    public var height: CGFloat {
        let label: UILabel = UILabel(frame: CGRect(x: 8, y: 8, width: UIScreen.main.bounds.width * 0.92, height: .infinity))
        let font: UIFont = UIFont(name: "Nunito-SemiBold", size: 30.0) ?? UIFont.systemFont(ofSize: 30.0, weight: .semibold)
        label.font = font
        label.text = self.message
        let numberOfLines: Int = label.calculateMaxLines()
        if numberOfLines < 3 {
            return self.title != nil ? EVIOAlertHeights.minimumHeightWithTitle : EVIOAlertHeights.minimumHeight
        } else {
            let aditionalLines: Int = numberOfLines-2
            let aditionalNeededHeight: CGFloat = CGFloat(aditionalLines) * EVIOAlertHeights.heightForLine
            let totalHeight: CGFloat = (self.title != nil ? EVIOAlertHeights.minimumHeightWithTitle : EVIOAlertHeights.minimumHeight) + aditionalNeededHeight
            if totalHeight > EVIOAlertHeights.maximumHeight {
                return EVIOAlertHeights.maximumHeight
            } else {
                return totalHeight
            }
        }
    }
    
    public var yPosition: CGFloat {
        if self.showAnimation {
            return 0
        } else {
            switch self.effectType {
            case .fromBottomLeftToCenter, .fromBottomRightToCenter, .fromBottomToCenter:
                return self.height
            case .fromTopLeftToCenter, .fromTopRightToCenter, .fromTopToCenter:
                return -self.height
            default:
                return 0
            }
        }
    }
    
    public var xPosition: CGFloat {
        if self.showAnimation {
            return 0
        } else {
            switch self.effectType {
            case .fromBottomLeftToCenter, .fromTopLeftToCenter, .fromLeftToCenter:
                return -UIScreen.main.bounds.width
            case .fromBottomRightToCenter, .fromTopRightToCenter, .fromRightToCenter:
                return UIScreen.main.bounds.width
            default:
                return 0
            }
        }
    }
    
    public var foreverAnimation: Animation {
        Animation.interpolatingSpring(mass: self.springAnimationValue.mass, stiffness: self.springAnimationValue.stiffness, damping: self.springAnimationValue.damping, initialVelocity: self.springAnimationValue.initialVelocity).repeatCount(1)
    }
    
    // MARK: - INIT
    public init(message: String, title: String?, negativeActionTitle: String, positiveActionTitle: String, effectType: EVIOAlertEffectType, alertType: EVIOAlertTypeAlert, springAnimationValue: EVIOAlertSpringAnimation) {
        self.showAnimation = false
        self.message = message
        self.title = title
        self.negativeActionTitle = negativeActionTitle
        self.positiveActionTitle = positiveActionTitle
        self.effectType = effectType
        self.alertType = alertType
        self.springAnimationValue = springAnimationValue
    }
    
}
