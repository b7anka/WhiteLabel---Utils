//
//  EVIOSelectEvListButtonStyle.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/02/2022.
//

import SwiftUI

public struct EVIOSelectEvListButtonStyle: ButtonStyle {
    
    private let ev: SelectEvListItem
    @Binding var selectable: Bool
    
    public init(ev: SelectEvListItem, selectable: Binding<Bool>) {
        self.ev = ev
        self._selectable = selectable
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        Rectangle()
            .cornerRadius(10)
            .shadow(color: self.selectable ? .secondaryShadowColor : .transparent, radius: 5, x: 0, y: 2)
            .frame(width: nil, height: 52)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(ev.selected ? Color.primaryTextColor : Color.transparent, lineWidth: 1.5)
                    .background(self.selectable ? Color.primaryBackground : Color.fifthBackground)
                    .cornerRadius(10)
                    .overlay(
                        HStack(spacing: 10) {
                            EVIOImage(urlString: ev.ev.imageContent ?? .empty, defaultImage: .defaultEvImage, aspectRatio: .fill, size: .init(width: 44, height: 44))
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: .zero) {
                                Text("\(ev.ev.brand ?? .empty) \(ev.ev.model ?? .empty)")
                                    .modifier(EVIOSearchViewResultSubtitleModifier(color: .primaryTextColor, lineLimit: 1, textAlignment: .leading))
                                Text("\(ev.ev.licensePlate ?? .empty)")
                                    .modifier(EVIOSearchViewResultSubtitleModifier(color: .tertiaryTextColor, lineLimit: 1, textAlignment: .leading))
                            }
                            Spacer()
                        }
                            .padding(.horizontal, 10)
                    )
            )
            .opacity(self.selectable ? configuration.isPressed ? 0.5 : 1.0 : 1.0)
    }
    
}
