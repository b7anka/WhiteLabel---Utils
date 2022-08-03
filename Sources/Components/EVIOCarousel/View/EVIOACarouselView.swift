//
//  EVIOACarouselView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 16/04/2022.
//

import SwiftUI
import ACarousel

public struct EVIOACarouselView<Content: View>: View {
    
    @Binding public var items: [EVIOCarouselModel]
    @Binding public var selectedIndex: Int
    public let height: CGFloat
    public var cardTapped: ((EVIOCarouselModel) -> Void)
    public let feedbackGenerator: UIImpactFeedbackGenerator
    public let allowCardToBeTapped: Bool
    public let defaultImage: String
    public let paddingHorizontal: CGFloat
    public let paddingBottom: CGFloat
    public let content: (EVIOCarouselModel) -> Content
    
    public init(items: Binding<[EVIOCarouselModel]>, selectedIndex: Binding<Int>, allowCardToBeTapped: Bool = true, defaultImage: String = .myEvsDefaultImage, paddingHorizontal: CGFloat = 20, paddingBottom: CGFloat = 20, height: CGFloat = UIScreen.main.bounds.height * 0.2, cardTapped: @escaping (EVIOCarouselModel) -> Void, @ViewBuilder content: @escaping (EVIOCarouselModel) -> Content) {
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        self.height = height
        self.paddingHorizontal = paddingHorizontal
        self.paddingBottom = paddingBottom
        self.defaultImage = defaultImage
        self.allowCardToBeTapped = allowCardToBeTapped
        self.content = content
        self._items = items
        self._selectedIndex = selectedIndex
        self.cardTapped = cardTapped
    }
    
    public var body: some View {
        VStack(spacing: .zero) {
            ACarousel(self.items, index: self.$selectedIndex, spacing: UIScreen.main.bounds.width * 0.09,
                      headspace: 30,
                      sidesScaling: 0.9,
                      isWrap: true,
                      autoScroll: .inactive) { item in
                ZStack {
                    EVIOImage(urlString: item.image ?? .empty, defaultImage: self.defaultImage, aspectRatio: .fill, size: .init(width: UIScreen.main.bounds.width * 0.69, height: self.height))
                        .cornerRadius(10)
                        .onTapGesture {
                            guard self.allowCardToBeTapped else { return }
                            self.feedbackGenerator.impactOccurred()
                            self.cardTapped(item)
                        }
                    self.content(item)
                        .padding(.horizontal, self.paddingHorizontal)
                        .padding(.bottom, self.paddingBottom)
                }
            }
            .frame(height: self.height)
            .shadow(color: .fifthShadow, radius: 3, x: 0, y: 0)
            EVIOPageIndicator(selectedIndex: self.$selectedIndex, numberOfPages: self.items.count)
                .padding(.top, 10)
        }
    }
    
}
