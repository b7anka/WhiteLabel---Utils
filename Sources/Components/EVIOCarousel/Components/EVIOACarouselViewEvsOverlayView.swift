//
//  EVIOACarouselViewEvsOverlayView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/04/2022.
//

import SwiftUI

public struct EVIOACarouselViewEvsOverlayView: View {
    
    public let item: EVIOCarouselModel
    
    public init(item: EVIOCarouselModel) {
        self.item = item
    }
    
    public var body: some View {
        HStack(spacing: .zero) {
            VStack(spacing: .zero) {
                Spacer()
                HStack {
                    Text(item.title ?? .empty)
                        .modifier(EVIOSearchViewRecentTextModifier(color: .white, lineLimit: 1, textAlignment: .leading))
                    Spacer()
                }
                HStack {
                    Text(item.subtitle ?? .empty)
                        .modifier(EVIOSearchViewRecentTextModifier(color: .white, lineLimit: 1, textAlignment: .leading))
                    Spacer()
                }
            }
            Spacer()
            if !self.item.isDefaultItem {
                VStack {
                    Spacer()
                    Image(.verticalEllipsis)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(width: nil, height: 22)
                        .foregroundColor(.white)
                }
            }
        }
    }
    
}
