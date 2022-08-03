//
//  EVIOToggle.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/12/2021.
//

import SwiftUI

public struct EVIOToggle: View {
    
    @Binding private var isOn: Bool
    public let title: String?
    public let action: (() -> Void)?
    
    public init(isOn: Binding<Bool>, title: String? = nil, action: (() -> Void)? = nil) {
        self._isOn = isOn
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            if let title = title {
                Text(title)
                    .modifier(EVIONoObjectsDefaultTitleModifier(color: .primaryTextColor))
                Spacer()
            }
            Toggle("", isOn: self.$isOn)
                .toggleStyle(EVIOToggleStyle(action: self.action))
        }
    }
    
}
