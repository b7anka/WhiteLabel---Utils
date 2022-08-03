//
//  View+CustomModifiers.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import SwiftUI

/// # EXTENSION THAT ADDS FUNCTIONS TO THE SWIFT UI'S BUILT IN VIEW STRUCT
public extension View {
    
    /// # METHOD THAT DETECTS WHEN THE DEVICE WAS SHAKEN
    /// - Parameter action: the callback to be executed when the shake happends
    /// - Returns: a view with this modifier attached
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(EVIODeviceShakeViewModifier(action: action))
    }
    
    /// # METHOD THAT WHEN FIRED DISABLED THE ANIMATION ON THE WHOLE APP
    /// - Parameter work: the callback to be executed once this method is finished
    func withoutAnimation(_ action: @escaping () -> Void) {
        // call the withouAnimation method of the ui view class
        UIView.withoutAnimation {
            action()
        }
    }
    
    /// # METHOD THAT ALLOWS TO ROUND DIFERENT CORNERS OF A VIEW
    /// - Parameters:
    ///   - radius: the radius to be used in the corners
    ///   - corners: the corners to be rounded
    /// - Returns: returns a view with this modifier attached
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( EVIORoundedCorner(radius: radius, corners: corners) )
    }
    
    /// # METHOD THAT RECOGNIZES WHEN A SWIPE GESTURE WAS PERFORMED
    /// - Parameter action: the callback to be executed when this method has finished running
    /// - Returns: a view with this modifier attached
    func onSwipeGesture(perform action: @escaping (EVIOSwipeGestureType) -> Void) -> some View {
        self.modifier(EVIOSwipeGestureModifier(action: action))
    }
    
    /// # METHOD THAT ALLOW TO SET A PLACEHOLDER TO ANY VIEW
    /// - Returns: a view with this modifier attached
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
    /// # METHOD THAT CALLS THE HELPER METHOD OF THE SINGLETON EVIO APP UTILS TO HIDE THE KEYBOARD
    func hideKeyboard() {
        EVIOAppUtils.shared.hideKeyboard()
    }
    
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// Example for complete removal:
    ///
    ///     Text("Label")
    ///         .isHidden(true, remove: true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
    
}
