//
//  EVIONoInternetTopView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 02/12/2021.
//

import SwiftUI
import DeviceKit

/// # NO INTERNET TOP VIEW
/// # THAT APPEARS AT THE TOP WHEN THE USER DOES NOT HAVE AN ACTIVE INTERNET CONNECTION
public struct EVIONoInternetTopView: View {
    
    // MARK: - PROPERTIES
    private let message: String
    private let device: Device
    
    public init(message: String) {
        self.message = message
        self.device = Device.current
    }
    
    // MARK: - BODY
    public var body: some View {
        // MARK: - VSTACK
        VStack(spacing: 0) {
            // MARK: - ZSTACK
            ZStack {
                // MARK: - BACKGROUND
                Color.tertiaryTextColor.opacity(0.9)
                    .frame(height: self.device.hasNotch ? 71 : 61)
                // MARK: - TEXT
                Text(self.message)
                    .modifier(EVIONoInternetConnectionModifier())
                    .padding(.top, self.device.hasNotch ? 20 : 0)
            }
            .edgesIgnoringSafeArea(.all)
            Spacer()
        }
    }
    
}
