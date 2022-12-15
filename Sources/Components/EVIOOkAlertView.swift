//
//  EVIOOkAlertView.swift
//  
//
//  Created by Tiago Moreira on 15/12/2022.
//

import SwiftUI

public struct EVIOOkAlertView: View {
    
    private let message: String
    private let action: ((EVIOAlertButtonType) -> Void)
    
    public init(message: String, action: @escaping (EVIOAlertButtonType) -> Void) {
        self.message = message
        self.action = action
    }
    
    public var body: some View {
        EVIOMultiActionAlert(completion: self.action, message: self.message, title: nil, negativeActionTitle: .empty, positiveActionTitle: EVIOLanguageManager.shared.language.generalOk, effectType: .none, alertType: .singleAction, springAnimationValue: .init())
    }
    
}
