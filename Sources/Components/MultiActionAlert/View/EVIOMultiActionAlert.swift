//
//  EVIOMultiActionAlert.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 03/12/2021.
//

import SwiftUI

public struct EVIOMultiActionAlert: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @StateObject private var viewModel: EVIOMultiActionAlertViewModel
    private let completion: ((EVIOAlertButtonType) -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(completion: @escaping (EVIOAlertButtonType) -> Void, message: String, title: String?, negativeActionTitle: String, positiveActionTitle: String, effectType: EVIOAlertEffectType = .none, alertType: EVIOAlertTypeAlert = .singleAction, springAnimationValue: EVIOAlertSpringAnimation = EVIOAlertSpringAnimation()) {
        self.completion = completion
        self._viewModel = StateObject(wrappedValue: EVIOMultiActionAlertViewModel(message: message, title: title, negativeActionTitle: negativeActionTitle, positiveActionTitle: positiveActionTitle, effectType: effectType, alertType: alertType, springAnimationValue: springAnimationValue))
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        ZStack {
            Color.semiTransparent
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                if let title = self.viewModel.title {
                    Text(title)
                        .modifier(EVIOAlertTitleModifier())
                        .padding(.horizontal)
                }
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(self.viewModel.message)
                        .modifier(EVIOAlertMessageModifier())
                        .padding(self.viewModel.title == nil ? .all : .horizontal)
                })
                HStack {
                    if self.viewModel.alertType == .twoActions {
                        Spacer()
                        Button(action: {
                            self.feedbackGenerator.impactOccurred()
                            withoutAnimation {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                            self.completion(.negative)
                        }, label: {
                            Text(self.viewModel.negativeActionTitle)
                                .modifier(EVIOAlertTitleModifier())
                        })
                    }
                    Spacer()
                    Button(action: {
                        self.feedbackGenerator.impactOccurred()
                        withoutAnimation {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                        self.completion(self.viewModel.alertType == .twoActions ? .positive : .ok)
                    }, label: {
                        Text(self.viewModel.positiveActionTitle)
                            .modifier(EVIOAlertTitleModifier(color: .tertiaryBackground))
                    })
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width * 0.92, height: 56).padding(.horizontal)
            }
            .frame(width: UIScreen.main.bounds.width * 0.92, height: self.viewModel.height)
            .background(Color.secondaryBackground).cornerRadius(10)
            .offset(x: self.viewModel.xPosition, y: self.viewModel.yPosition)
            .animation(self.viewModel.showAnimation ? self.viewModel.foreverAnimation : .default)
        }
        .background(EVIOTransparentBackgroundView())
    }
    
}
