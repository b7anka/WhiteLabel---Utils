//
//  EVIODeviceShakeViewModifier.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/12/2021.
//

import SwiftUI

/// # VIEW MODIFIER TO BE IMPLEMENTED BY ANY VIEW THAT WANTS TO REACT TO THE DEVICE BEING SHAKED
public struct EVIODeviceShakeViewModifier: ViewModifier {
    
    // the callback to execute
    public var action: (() -> Void)

    // the body of the modifier
    public func body(content: Content) -> some View {
        content
            .onAppear()
            // when a notification of type deviceDidShakeNotification is received
            .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
                // executes the callback
                self.action()
            }
    }
    
}
