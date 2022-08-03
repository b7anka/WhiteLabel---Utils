//
//  EVIOLinkButton.swift
//  evio
//
//  Created by João Moreira on 25/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOLinkButton: View {
    
    private let title: String
    private let imageString: String?
    private let action: (() -> Void)
    
    public init(title: String, imageString: String?, action: @escaping () -> Void) {
        self.title = title
        self.imageString = imageString
        self.action = action
    }
    
    public var body: some View {
        Button(action: self.action) {
            HStack {
                Spacer()
                if let imageString = self.imageString {
                    Image(imageString).resizable().aspectRatio(contentMode: .fill).frame(width: 13.71, height: 13.03)
                }
                Text(self.title)
                    .underline(true, color: .secondaryTextColor)
                    .modifier(EVIONoObjectsDefaultTitleModifier(color: .secondaryTextColor, textAligment: .leading, lineLimit: 1))
                    .padding(.horizontal, 3)
            }
            
        }
    }
    
}
