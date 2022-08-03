//
//  EVIORemoveFromGroupBottomSheetView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 20/04/2022.
//

import SwiftUI

public struct EVIORemoveFromGroupBottomSheetView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    private let title: String
    private let subTitle: String
    private let cancelButtonTitle: String
    private let completion: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    @State private var isAnimating: Bool = false
    
    public init(title: String, subTitle: String, cancelButtonTitle: String, completion: @escaping () -> Void) {
        self.title = title
        self.subTitle = subTitle
        self.cancelButtonTitle = cancelButtonTitle
        self.completion = completion
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        ZStack {
            Color.alternativeSemiTransparent
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    self.dismissView()
                }
            VStack {
                Spacer()
                VStack(spacing: .zero) {
                    Button(action: {
                        self.feedbackGenerator.impactOccurred()
                        self.completion()
                        self.dismissView()
                    }) {
                        HStack {
                            Text(self.title)
                                .modifier(EVIOAlertTitleModifier(color: .primaryTextColor))
                        }
                            .padding(.horizontal, 34)
                            .padding(.top, 15)
                    }
                    EVIOVerticalDivider()
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                    Text(self.subTitle)
                        .modifier(EVIOFiltersSliderSubtitleLabelsTextModifier(color: .tertiaryTextColor, lineLimit: nil, textAlignment: .center))
                        .padding(.horizontal, 34)
                        .padding(.vertical, 30)
                    EVIOMainButton(disabled: .constant(false), title: self.cancelButtonTitle, action: {
                        self.dismissView()
                    })
                        .padding(.bottom, 40)
                        .padding(.horizontal, 65)
                }
                .shadow(color: .fifthShadow, radius: 6, x: 0, y: 0)
                .background(Color.secondaryBackground).cornerRadius(30, corners: [.topLeft, .topRight])
                .offset(y: self.isAnimating ? 0 : 300)
                .animation(.default, value: self.isAnimating)
                .onAppear {
                    self.isAnimating = true
                }
                .onDisappear {
                    self.isAnimating = false
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .background(EVIOTransparentBackgroundView())
    }
    
    private func dismissView() {
        withoutAnimation {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
}
