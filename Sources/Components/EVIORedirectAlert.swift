//
//  EVIORedirectAlert.swift
//  evio
//
//  Created by João Moreira on 09/02/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIORedirectAlert: View {
    
    @Environment(\.presentationMode) private var presentationMode
    private let message: EVIOServerMessage
    private let effectType: EVIOAlertEffectType
    private let sprinAnimationValue: EVIOAlertSpringAnimation
    private let completion: ((EVIOAlertRedirectType) -> Void)
    
    private struct EVIORedirectAlertHeight {
        static let mainHeight: CGFloat = 216.0
        static let maximumHeight: CGFloat = UIScreen.main.bounds.height * 0.5
        static let lineHeight: CGFloat = 15.0
    }
    
    @State private var showAnimation: Bool = false
    private var foreverAnimation: Animation {
        Animation.interpolatingSpring(mass: self.sprinAnimationValue.mass, stiffness: self.sprinAnimationValue.stiffness, damping: self.sprinAnimationValue.damping, initialVelocity: self.sprinAnimationValue.initialVelocity).repeatCount(1)
    }
    
    public init(message: EVIOServerMessage, effectType: EVIOAlertEffectType, sprinAnimationValue: EVIOAlertSpringAnimation, completion: @escaping (EVIOAlertRedirectType) -> Void) {
        self.message = message
        self.effectType = effectType
        self.sprinAnimationValue = sprinAnimationValue
        self.completion = completion
    }
    
    public var body: some View {
        ZStack {
            Color.alternativeSemiTransparent
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    EVIOCloseButtonView(containsTitle: false, dismissAction: {
                        self.closeView()
                    }, buttonColor: .tertiaryTextColor)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top)
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(self.message.code == .paymentPreAuth ? EVIOLanguageManager.shared.getTranslationFor(key: self.message.code ?? .empty).replacingOccurrences(of: "'amount'", with: "\(String(self.message.amount ?? 0.0))€") : EVIOLanguageManager.shared.getTranslationFor(key: self.message.code ?? .empty))
                        .modifier(EVIOSearchViewResultTitleModifier(color: .primaryTextColor, lineLimit: nil, textAlignment: .center))
                        .padding(.horizontal)
                })
                    .padding(.top)
                Spacer()
                EVIOMainButton(disabled: .constant(false), title: EVIOAppUtils.shared.buttonTitleForRedirect(redirect: self.message.redirect ?? .billing)) {
                    guard let redirectType = self.message.redirect else { return }
                    self.completion(redirectType)
                    self.closeView()
                }
                .padding(.horizontal, 45)
                .padding(.bottom)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width * 0.92, height: self.calculateMainHeight())
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .fifthShadow, radius: 6, x: 0, y: 0)
            .offset(x: self.getXPosition(), y: self.getYPosition())
            .animation(self.showAnimation ? self.foreverAnimation : .default).onAppear {
                self.showAnimation = true
            }
            .onDisappear {
                self.showAnimation = false
            }
        }
        .background(EVIOTransparentBackgroundView())
    }
    
    private func closeView() {
        withoutAnimation {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
    private func calculateMainHeight() -> CGFloat {
        let label: UILabel = UILabel(frame: CGRect(x: 8, y: 8, width: UIScreen.main.bounds.width * 0.92, height: .infinity))
        let font: UIFont = UIFont(name: "Nunito-SemiBold", size: 25.0) ?? UIFont.systemFont(ofSize: 25.0, weight: .semibold)
        label.font = font
        label.text = EVIOLanguageManager.shared.getTranslationFor(key: self.message.code ?? .empty)
        let numberOfLines: Int = label.calculateMaxLines()
        if numberOfLines < 3 {
            return EVIORedirectAlertHeight.mainHeight
        } else {
            let aditionalLines: Int = numberOfLines-2
            let aditionalNeededHeight: CGFloat = CGFloat(aditionalLines) * EVIORedirectAlertHeight.lineHeight
            let totalHeight: CGFloat = EVIORedirectAlertHeight.maximumHeight + aditionalNeededHeight
            if totalHeight > EVIORedirectAlertHeight.maximumHeight {
                return EVIORedirectAlertHeight.maximumHeight
            } else {
                return totalHeight
            }
        }
    }
    
    private func getYPosition() -> CGFloat {
        if self.showAnimation {
            return 0
        } else {
            switch self.effectType {
            case .fromBottomLeftToCenter, .fromBottomRightToCenter, .fromBottomToCenter:
                return self.calculateMainHeight()
            case .fromTopLeftToCenter, .fromTopRightToCenter, .fromTopToCenter:
                return -self.calculateMainHeight()
            default:
                return 0
            }
        }
    }
    
    private func getXPosition() -> CGFloat {
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
    
}
