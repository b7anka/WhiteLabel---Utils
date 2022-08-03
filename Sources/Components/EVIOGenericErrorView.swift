//
//  EVIOGenericErrorView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 29/04/2022.
//

import SwiftUI

public struct EVIOGenericErrorView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    public init() { }
    
    public var body: some View {
        ZStack {
            Color.primaryBackground
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                EVIOBackButtonAndTitleComponent(title: EVIOLanguageManager.shared.language.generalSomethingWentWrong, isClose: false, action: {
                    withoutAnimation {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                })
                    .padding(.horizontal, 34)
                EVIONoObjectsDefaultView(title: EVIOLanguageManager.shared.language.generalOhNoTitle, subtitle: EVIOLanguageManager.shared.language.generalGenericErrorMessage)
            }
        }
    }
    
}
