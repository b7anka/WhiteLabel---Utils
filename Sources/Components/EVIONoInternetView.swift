//
//  EVIONoInternetView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 05/01/2022.
//

import SwiftUI

public struct EVIONoInternetView: View {
    
    private let language: EVIOLanguage
    
    public init() {
        self.language = EVIOLanguageManager.shared.language
    }
    
    public var body: some View {
        EVIONoObjectsDefaultView(title: self.language.generalNoInternetConnection, subtitle: self.language.generalNoInternetConnectionMessage, imageName: .noInternetIcon)
    }
    
}
