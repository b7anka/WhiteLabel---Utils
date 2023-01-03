import SwiftUI

public struct EVIOSlidingTabView : View {
    
    // MARK: - Required Properties
    @Binding private var selection: Int
    private let tabs: [EVIOTabBarItem]
    private let font: Font
    private let animation: Animation
    private let activeAccentColor: Color
    private let inactiveAccentColor: Color
    private let selectionBarColor: Color
    private let inactiveTabColor: Color
    private let activeTabColor: Color
    private let selectionBarHeight: CGFloat
    private let selectionBarBackgroundColor: Color
    private let selectionBarBackgroundHeight: CGFloat
    private let shouldFeedback: Bool
    private let feedbackGenerator: UIImpactFeedbackGenerator
    
    public init(selection: Binding<Int>,
         tabs: [EVIOTabBarItem],
         font: Font = .body,
         animation: Animation = .spring(),
         activeAccentColor: Color = .blue,
         inactiveAccentColor: Color = Color.black.opacity(0.4),
         selectionBarColor: Color = .blue,
         inactiveTabColor: Color = .clear,
         activeTabColor: Color = .clear,
         selectionBarHeight: CGFloat = 2,
         selectionBarBackgroundColor: Color = Color.gray.opacity(0.2),
         selectionBarBackgroundHeight: CGFloat = 1, shouldFeedback: Bool = true) {
        self._selection = selection
        self.tabs = tabs
        self.font = font
        self.animation = animation
        self.activeAccentColor = activeAccentColor
        self.inactiveAccentColor = inactiveAccentColor
        self.selectionBarColor = selectionBarColor
        self.inactiveTabColor = inactiveTabColor
        self.activeTabColor = activeTabColor
        self.selectionBarHeight = selectionBarHeight
        self.selectionBarBackgroundColor = selectionBarBackgroundColor
        self.selectionBarBackgroundHeight = selectionBarBackgroundHeight
        self.shouldFeedback = shouldFeedback
        self.feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    // MARK: - View Construction
    
    public var body: some View {
        
        return VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 0) {
                ForEach(self.tabs) { tab in
                    Button(action: {
                        withAnimation {
                            if self.shouldFeedback {
                                self.feedbackGenerator.impactOccurred()
                            }
                            let selection = self.tabs.firstIndex(of: tab) ?? 0
                            self.selection = selection
                        }
                    }) {
                        HStack {
                            Spacer()
                            Text(tab.title)
                                .font(self.font)
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                                .fixedSize(horizontal: false, vertical: true)
                                .minimumScaleFactor(0.5)
                            Spacer()
                        }
                    }
                    .padding(.vertical, self.tabs.count == 1 ? .zero : 10)
                        .accentColor(
                            self.isSelected(tabIdentifier: tab.title)
                                ? self.activeAccentColor
                                : self.inactiveAccentColor)
                        .background(
                            self.isSelected(tabIdentifier: tab.title)
                                ? self.activeTabColor
                                : self.inactiveTabColor)
                        .isHidden(tab.hidden)
                        .disabled(tab.disabled)
                }
            }
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(self.selectionBarColor)
                        .frame(width: self.tabWidth(from: geometry.size.width), height: self.selectionBarHeight, alignment: .leading)
                        .offset(x: self.selectionBarXOffset(from: geometry.size.width), y: 0)
                        .animation(self.animation)
                        .isHidden(self.tabs[self.selection].underbarHidden)
                    Rectangle()
                        .fill(self.selectionBarBackgroundColor)
                        .frame(width: geometry.size.width, height: self.selectionBarBackgroundHeight, alignment: .leading)
                        .isHidden(self.tabs[self.selection].underbarHidden)
                }.fixedSize(horizontal: false, vertical: true)
            }.fixedSize(horizontal: false, vertical: true)
            
        }
    }
    
    // MARK: Private Helper
    
    private func isSelected(tabIdentifier: String) -> Bool {
        return tabs[min(selection, self.tabs.count-1)].title == tabIdentifier
    }
    
    private func selectionBarXOffset(from totalWidth: CGFloat) -> CGFloat {
        return self.tabWidth(from: totalWidth) * CGFloat(min(selection, self.tabs.count-1))
    }
    
    private func tabWidth(from totalWidth: CGFloat) -> CGFloat {
        return totalWidth / CGFloat(tabs.count)
    }
}
