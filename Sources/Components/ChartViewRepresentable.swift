//
//  ChartViewRepresentable.swift
//  evio
//
//  Created by João Moreira on 25/05/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI
import Charts

public struct ChartViewRepresentable: UIViewRepresentable {
    
    public var readingPoints: [EVIOReadingPoint]?
    public var statistics: [EVIOStatistics]?
    public var forEv: Bool
    
    public init(readingPoints: [EVIOReadingPoint]? = nil, statistics: [EVIOStatistics]? = nil, forEv: Bool = false) {
        self.readingPoints = readingPoints
        self.statistics = statistics
        self.forEv = forEv
    }
    
    public func makeUIView(context: UIViewRepresentableContext<ChartViewRepresentable>) -> UIView {
        let view: UIView = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<ChartViewRepresentable>) {
        let chart: BarChartView
        if let readingPoints = self.readingPoints {
            chart = EVIOChartUtils.loadGraphicReadPoints(readingPoints: readingPoints)
        } else {
            chart = EVIOChartUtils.loadGraphicStatistics(statistics: self.statistics ?? [], forEv: self.forEv)
        }
        for v in uiView.subviews {
            if v is BarChartView {
                v.removeFromSuperview()
            }
        }
        uiView.addSubview(chart)
        chart.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            chart.leadingAnchor.constraint(equalTo: uiView.leadingAnchor),
            chart.trailingAnchor.constraint(equalTo: uiView.trailingAnchor),
            chart.topAnchor.constraint(equalTo: uiView.topAnchor),
            chart.bottomAnchor.constraint(equalTo: uiView.bottomAnchor)
        ])
    }
    
}
