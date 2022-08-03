//
//  EVIOFillingCircleAnimatedView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 21/04/2022.
//

import SwiftUI

public struct EVIOFillingCircleAnimatedView: View {
    
    @StateObject private var viewModel: EVIOFillingCircleAnimatedViewViewModel
    private let circleColor: Color
    private let strokeWidth: CGFloat
    
    public init(circleColor: Color = .batterySubtractionCircleColor.opacity(0.3), strokeWidth: CGFloat = 10) {
        self._viewModel = StateObject(wrappedValue: EVIOFillingCircleAnimatedViewViewModel())
        self.circleColor = circleColor
        self.strokeWidth = strokeWidth
    }
    
    public var body: some View {
        ZStack {
            Group {
                Circle()
                    .stroke(self.circleColor, style: StrokeStyle(lineWidth: self.strokeWidth))
                Circle()
                    .trim(from: 0, to: self.viewModel.fillValue)
                    .stroke(self.viewModel.fillCircleColor, style: StrokeStyle(lineWidth: self.strokeWidth))
                    .animation(.default, value: self.viewModel.fillValue)
                    .rotationEffect(.degrees(-90))
            }
            .padding(.horizontal, 5)
        }
        .frame(width: 60, height: 60)
    }
}

private final class EVIOFillingCircleAnimatedViewViewModel: ObservableObject {
    
    @Published var fillValue: CGFloat
    @Published var reverse: Bool
    @Published var fillCircleColor: LinearGradient
    private var timer: Timer!
    init() {
        self.fillCircleColor = LinearGradient(colors: [.batteryFillCircleColorAlternative, .batteryFillCircleColor], startPoint: .topLeading, endPoint: .bottomTrailing)
        self.reverse = false
        self.fillValue = .zero
        self.setupTimer()
    }
    
    private func setupTimer() {
        self.reverse = false
        self.timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.updateValue), userInfo: nil, repeats: true)
    }
    
    @objc private func updateValue() {
        if self.fillValue <= 1.0 {
            self.fillValue += 0.1
        } else {
            self.timer.invalidate()
            self.timer = nil
            self.reverse = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.fillValue = .zero
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    self.setupTimer()
                }
            }
        }
    }
    
}
