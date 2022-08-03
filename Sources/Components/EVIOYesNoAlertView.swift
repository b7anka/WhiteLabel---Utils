//
//  EVIOYesNoAlertView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/03/2022.
//

import SwiftUI

public struct EVIOYesNoAlertView: View {
    
    private let message: String
    private let action: ((EVIOAlertButtonType) -> Void)
    
    public init(message: String, action: @escaping (EVIOAlertButtonType) -> Void) {
        self.message = message
        self.action = action
    }
    
    public var body: some View {
        EVIOMultiActionAlert(completion: self.action, message: self.message, title: nil, negativeActionTitle: EVIOLanguageManager.shared.language.generalNo, positiveActionTitle: EVIOLanguageManager.shared.language.generalYes, effectType: .none, alertType: .twoActions, springAnimationValue: .init())
    }
    
}
