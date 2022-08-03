//
//  EVIOMyAccountReferencePlaceListItemView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/03/2022.
//

import SwiftUI

public struct EVIOMyAccountReferencePlaceListItemView: View {
    
    private let refPlace: EVIOMyAccountReferencePlace
    private let action: ((EVIOMyAccountReferencePlace) -> Void)?
    private let deleteAction: ((EVIOMyAccountReferencePlace) -> Void)?
    private let feedbackGenerator: UIImpactFeedbackGenerator
    @State private var dragged: Bool = false
    
    public init(refPlace: EVIOMyAccountReferencePlace, action: ((EVIOMyAccountReferencePlace) -> Void)? = nil, deleteAction: ((EVIOMyAccountReferencePlace) -> Void)? = nil) {
        self.refPlace = refPlace
        self.action = action
        self.deleteAction = deleteAction
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    public var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Group {
                Image(EVIOMyAccountReferencePlace.imageForReferenceType(type: self.refPlace.type))
                    .resizable()
                    .aspectRatio(nil, contentMode: .fit)
                    .frame(width: nil, height: 15)
                VStack(spacing: 5) {
                    HStack(spacing: .zero) {
                        Text(self.refPlace.name)
                            .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryTextColor, textAligment: .leading))
                        Spacer()
                    }
                    HStack(spacing: .zero) {
                        Text(self.refPlace.address)
                            .modifier(EVIOReferencePlaceAddressModifier(textAlignment: .leading))
                        Spacer()
                    }
                }
            }
            .offset(x: self.dragged ? -20 : .zero)
            .animation(.linear(duration: 0.05), value: self.dragged)
            if self.dragged, let deleteAction = self.deleteAction {
                EVIODeleteButton(action: {
                    deleteAction(self.refPlace)
                    self.dragged = false
                })
            }
        }
        .onTapGesture {
            guard !self.refPlace.isDefault, let action = self.action else { return }
            self.feedbackGenerator.impactOccurred()
            action(self.refPlace)
        }
        .onSwipeGesture { swipe in
            guard (swipe == .left || swipe == .right) && self.deleteAction != nil && !self.refPlace.isDefault else { return }
            self.dragged = swipe == .left
        }
    }
    
}
