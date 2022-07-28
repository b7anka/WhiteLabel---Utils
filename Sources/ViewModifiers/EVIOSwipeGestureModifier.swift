//
//  EVIOSwipeGestureModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 08/12/2021.
//

import SwiftUI
import WLModels

/// # A VIEW MODIFIER THAT REACTS TO A DRAG GESTURE PERFORMED BY THE USER, IT CAN BE IMPLEMENTED BY ANY VIEW THAT WANTS TO EXECUTE SOMETHING WHEN A DRAG OCCURRS (NORMALY SWIPE GESTURE BY THE USER)
public struct EVIOSwipeGestureModifier: ViewModifier {
    
    // the callback to be executed that takes an EVIOSwipeGestureType as a parameter
    public var action: ((EVIOSwipeGestureType) -> Void)
    
    // the body of the modifier
    public func body(content: Content) -> some View {
        content
            .onAppear()
            .gesture(
                // we tell the view to listen to a drag geture on the global coordinate space and with a minimum drag of 20
                DragGesture(minimumDistance: 20, coordinateSpace: .global)
                // and when finished we get a value back
                .onEnded { value in
                    // we set an horizontal value to be the one from the width of the translation's value
                    let horizontalAmount = value.translation.width as CGFloat
                    // we set a vertical value to be the one from the height of the translation's value
                    let verticalAmount = value.translation.height as CGFloat
                    // we check if the absolute value of horizontal amount is higher than the absolute of the vertical amount
                    // and if true
                    if abs(horizontalAmount) > abs(verticalAmount) {
                        // if the horizontal value is lower than zero it means the user swipped left otherwise right
                        self.action(horizontalAmount < 0 ? .left : .right)
                    } else {
                        // else if the vertical ammount is lower than zero it means the user swipped up otherwise down
                        self.action(verticalAmount < 0 ? .up : .down)
                    }
                }
            )
    }
    
}
