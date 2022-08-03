//
//  EVIOLoadingBar.swift
//  EVIO - White Label
//
//  Created by Tiago Moreira on 28/04/2022.
//

import SwiftUI

public struct EVIOLoadingBar: View {
    
    @StateObject private var viewModel: EVIOLoadingBarViewModel
    
    public init(barSize: CGFloat, barHeight: CGFloat, subtractionBarColor: Color = .gray, barColor: Color = .black, gradient: LinearGradient? = nil) {
        self._viewModel = StateObject(wrappedValue: EVIOLoadingBarViewModel(barSize: barSize, barHeight: barHeight, subtractionBarColor: subtractionBarColor, barColor: barColor, gradient: gradient))
    }
    
    public var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: self.viewModel.barHeight / 2)
                .fill(self.viewModel.subtractionBarColor)
                .frame(width: self.viewModel.barSize, height: 10)
            RoundedRectangle(cornerRadius: self.viewModel.barHeight / 2)
                .fill(self.viewModel.gradient ?? LinearGradient(colors: [self.viewModel.barColor], startPoint: .leading, endPoint: .trailing))
                .frame(width: self.viewModel.barSize / 1.5, height: 10)
                .offset(x: self.viewModel.offset)
        }
        .clipped()
    }
}

final public class EVIOLoadingBarViewModel: ObservableObject {
    
    @Published public var offset: CGFloat
    public let barSize: CGFloat
    public let barHeight: CGFloat
    public let subtractionBarColor: Color
    public let barColor: Color
    public var gradient: LinearGradient?
    private var timer: Timer!
    
    public init(barSize: CGFloat, barHeight: CGFloat, subtractionBarColor: Color, barColor: Color, gradient: LinearGradient?) {
        self.subtractionBarColor = subtractionBarColor
        self.barColor = barColor
        self.gradient = gradient
        self.barHeight = barHeight
        self.timer = nil
        self.barSize = barSize
        self.offset = -self.barSize
        self.setupTimer()
    }
    
    private func setupTimer() {
        self.timer = Timer.scheduledTimer(timeInterval: 0.012, target: self, selector: #selector(self.updateOffset), userInfo: nil, repeats: true)
    }
    
    @objc private func updateOffset() {
        if self.offset > UIScreen.main.bounds.width {
            self.offset = -self.barSize
        } else {
            withAnimation {
                self.offset += 5
            }
        }
    }
    
}
