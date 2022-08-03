//
//  EVIOStartAndStopAnimationView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 29/04/2022.
//

import SwiftUI

public struct EVIOStartAndStopAnimationView: View {
    
    @StateObject private var viewModel: EVIOStartAndStopAnimationViewViewModel
    
    public init(charger: EVIOCharger?, reverse: Bool = false) {
        self._viewModel = StateObject(wrappedValue: EVIOStartAndStopAnimationViewViewModel(charger: charger, reverse: reverse))
    }
    
    public var body: some View {
        ZStack {
            Color.primaryBackground
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: .zero) {
                HStack(spacing: .zero) {
                    Text(self.viewModel.titleMessage)
                        .modifier(EVIOPageTitleModifier())
                    Spacer()
                }
                .padding(.horizontal, 34)
                Spacer()
                EVIOLottieView(name: self.viewModel.animationName, reverse: self.viewModel.reverse)
                    .edgesIgnoringSafeArea(.horizontal)
                    .padding(.vertical, 20)
                Spacer()
                Text(self.viewModel.subtitleMessage)
                    .modifier(EVIOSearchViewResultTitleModifier(color: .primaryTextColor, lineLimit: nil, textAlignment: .center))
                    .padding(.horizontal, 34)
                    .padding(.bottom, 20)
                EVIOLoadingBar(barSize: UIScreen.main.bounds.width*0.6, barHeight: 8, subtractionBarColor: .loadingBarSubtractionColor, barColor: .loadingBarColor, gradient: LinearGradient(colors: [.loadingBarColor, .loadingBarAlternativeColor], startPoint: .leading, endPoint: .trailing))
                    .padding(.bottom, 40)
            }
            .onAppear {
                UIApplication.shared.isIdleTimerDisabled = true
            }
            .onDisappear {
                UIApplication.shared.isIdleTimerDisabled = false
            }
        }
    }
    
}

final private class EVIOStartAndStopAnimationViewViewModel: ObservableObject {
    
    @Published var titleMessage: String
    @Published var subtitleMessage: String
    let reverse: Bool
    var animationName: String {
        if self.charger?.chargerType == .siemensChargerType {
            return .siemensAnimation
        }
        return .evioAnimation
    }
    private let charger: EVIOCharger?
    init(charger: EVIOCharger?, reverse: Bool) {
        self.charger = charger
        self.reverse = reverse
        self.titleMessage = self.reverse ? EVIOLanguageManager.shared.language.loadingChargingStopTitle : EVIOLanguageManager.shared.language.loadingChargingStartTitle
        self.subtitleMessage = self.reverse ? EVIOLanguageManager.shared.language.loadingChargingStoptSubtitle : EVIOLanguageManager.shared.language.loadingChargingStartSubtitle
    }
    
}
