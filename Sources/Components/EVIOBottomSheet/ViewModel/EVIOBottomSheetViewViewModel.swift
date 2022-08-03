//
//  EVIOBottomSheetViewViewModel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 14/02/2022.
//

import SwiftUI

public final class EVIOBottomSheetViewViewModel: ObservableObject {
    
    @Published public var title: String
    @Published public var cancelButtonTitle: String
    @Published public var items: [EVIOBottomSheetItem]
    @Published public var slidingType: EVIOBottomSheetSlideType
    @Published public var showAnimation: Bool
    public var action: ((EVIOBottomSheetButton?, EVIOBottomSheetItem?) -> Void)
    public var foreverAnimation: Animation {
        Animation.interpolatingSpring(mass: 0.4, stiffness: 3.5, damping: 3.5, initialVelocity: 4.0).repeatCount(1)
    }
    
    public init(title: String, cancelButtonTitle: String, items: [EVIOBottomSheetItem], slidingType: EVIOBottomSheetSlideType, action: @escaping (EVIOBottomSheetButton?, EVIOBottomSheetItem?) -> Void) {
        self.showAnimation = false
        self.title = title
        self.cancelButtonTitle = cancelButtonTitle
        self.items = items
        self.slidingType = slidingType
        self.action = action
    }
    
    public func calculateHeightForMainView() -> CGFloat {
        if self.items.count == 1 {
            return EVIOBottomSheetHeight.minimumHeight
        } else if self.items.count > 4 {
            return EVIOBottomSheetHeight.maximumHeight
        } else {
            let extendedHeight = CGFloat((self.items.count-1)) * EVIOBottomSheetHeight.itemHeight
            return EVIOBottomSheetHeight.minimumHeight + extendedHeight
        }
    }
    
    public func getXOffsetValue() -> CGFloat {
        if self.showAnimation {
           return 0
        } else {
            if self.slidingType == .slideFromRight {
                return UIScreen.main.bounds.width
            } else if slidingType == .slideFromLeft {
                return -UIScreen.main.bounds.width
            }
            return 0
        }
    }
    
    public func getYOffsetValue() -> CGFloat {
        if self.showAnimation {
            return 0
        } else {
            if self.slidingType == .slideFromBottom {
                return self.calculateHeightForMainView()
            } else {
                return 0
            }
        }
    }
    
}
