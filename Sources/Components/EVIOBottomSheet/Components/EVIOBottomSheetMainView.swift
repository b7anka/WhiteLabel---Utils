//
//  EVIOBottomSheetMainView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 14/02/2022.
//

import SwiftUI

public struct EVIOBottomSheetMainView: View {
    
    @ObservedObject public var viewModel: EVIOBottomSheetViewViewModel
    public let closeView: (() -> Void)
    public let restoreColorAndDismiss: (() -> Void)
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(viewModel: EVIOBottomSheetViewViewModel, closeView: @escaping () -> Void, restoreColorAndDismiss: @escaping () -> Void) {
        self._viewModel = ObservedObject(wrappedValue: viewModel)
        self.closeView = closeView
        self.restoreColorAndDismiss = restoreColorAndDismiss
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        VStack {
            Spacer()
            VStack(spacing: .zero) {
                Spacer()
                Text(self.viewModel.title)
                    .modifier(EVIOAlertTitleModifier(color: .primaryTextColor))
                    .padding(.horizontal)
                    .padding(.top, 10)
                Spacer()
                ScrollView(self.viewModel.items.count > 4 ? .vertical : [], showsIndicators: false, content: {
                    ForEach(0..<self.viewModel.items.count, id: \.self) { offset in
                        let item: EVIOBottomSheetItem = self.viewModel.items[offset]
                        VStack(spacing: .zero) {
                            EVIOVerticalDivider()
                                .padding(.horizontal, 13)
                            Spacer()
                            Button(action: {
                                self.feedbackGenerator.impactOccurred()
                                self.viewModel.action(nil, item)
                                self.restoreColorAndDismiss()
                            }, label: {
                                Rectangle()
                                    .fill(Color.transparent)
                                    .frame(width: nil, height: 20)
                                    .overlay(
                                        Text(item.title)
                                            .modifier(EVIOBottomSheetButtonModifier())
                                            .padding(.horizontal)
                                    )
                            })
                            Spacer()
                            if offset == self.viewModel.items.count-1 {
                                EVIOVerticalDivider()
                                    .padding(.horizontal, 13)
                            }
                        }
                        .frame(width: nil, height: EVIOBottomSheetHeight.itemHeight)
                    }
                })
                    .padding(.top, 10)
                    .padding(.bottom, 15)
                EVIOMainButton(disabled: .constant(false), title: self.viewModel.cancelButtonTitle, action: {
                    self.closeView()
                })
                    .padding(.bottom, 15)
                    .padding(.horizontal, 65)
                Spacer()
            }
            .frame(width: nil, height: self.viewModel.calculateHeightForMainView())
            .shadow(color: .fifthShadow, radius: 6, x: 0, y: 0)
            .background(Color.secondaryBackground).cornerRadius(30, corners: [.topLeft, .topRight])
            .offset(x: self.viewModel.getXOffsetValue(), y: self.viewModel.getYOffsetValue())
            .animation(self.viewModel.showAnimation ? self.viewModel.foreverAnimation : .default)
            .onAppear {
                self.viewModel.showAnimation = true
            }
            .onDisappear {
                self.viewModel.showAnimation = false
            }
        }
    }
    
}
