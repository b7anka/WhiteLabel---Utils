//
//  EVIOChartUtils.swift
//  evio
//
//  Created by João Tiago Ferreira Moreira on 07/08/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit
import Charts
import SwiftUI

public final class EVIOChartUtils {
    
    private static let languageManager: EVIOLanguage = EVIOLanguageManager.shared.language
    
    public static func loadGraphicReadPoints(readingPoints: [EVIOReadingPoint]) -> BarChartView {
        
        let chartView: BarChartView = BarChartView()
        
        let font = UIFont(name: .appFont, size: 12) ?? UIFont.systemFont(ofSize: 12)
        Self.loadLegend(chartView: chartView)
        var values1 = [BarChartDataEntry]()
        var values2 = [BarChartDataEntry]()
        var xAxisValues = [String]()
        
        for (index, it) in readingPoints.enumerated() {
            if it.instantPower ?? .zero > 0.0 {
                values1.append(BarChartDataEntry(x: Double(index), y: (it.instantPower ?? .zero) / 1000))
            }
            if it.batteryCharged ?? .zero > 0.0 {
                values2.append(BarChartDataEntry(x: Double(index), y: ((it.batteryCharged ?? .zero) / 1000).rounded(.up)))
            }
            xAxisValues.append(Date.convertHourToLocal(hour: it.readDate ?? .empty))
        }
        
        let setPower: BarChartDataSet = BarChartDataSet(entries: values1, label: self.languageManager.sessionSummaryPowerKw)
        let setBattery: BarChartDataSet = BarChartDataSet(entries: values2, label: self.languageManager.sessionSummaryBattery)
        setPower.setColor(Color.energyBarColors.uiColor)
        setBattery.setColor(Color.chargingTimeBarsColor.uiColor)
        setPower.highlightEnabled = false
        setPower.drawValuesEnabled = false
        setBattery.highlightEnabled = false
        setBattery.drawValuesEnabled = false
        setPower.axisDependency = YAxis.AxisDependency.left
        setBattery.axisDependency = YAxis.AxisDependency.right
        
        var dataSets = [BarChartDataSet]()
        dataSets.append(setPower)
        dataSets.append(setBattery)
        
        let data = BarChartData(dataSets: dataSets)
        chartView.data = data
        Self.loadXAxis(xAxis: chartView.xAxis, font: font, xAxisValues: xAxisValues, size: Double(readingPoints.count))
        Self.loadYAxisLeft(axis: chartView.leftAxis, font: UIFont(name: .appFont, size: 11) ?? UIFont.systemFont(ofSize: 11))
        Self.formatChart(chartView: chartView, numberOfBars: readingPoints.count)
        return chartView
    }
    
    public static func loadGraphicStatistics(statistics: [EVIOStatistics], forEv: Bool = false) -> BarChartView {
        
        let chartView: BarChartView = BarChartView()
        
        let font = UIFont(name: .appFont, size: 12) ?? UIFont.systemFont(ofSize: 12)
        Self.loadLegend(chartView: chartView)
        var values1 = [BarChartDataEntry]()
        var values2 = [BarChartDataEntry]()
        var xAxisValues = [String]()
        
        let statisticsPerDays: [[EVIOStatistics]] = statistics.sorted(by: {$0.startDate ?? .empty < $1.startDate ?? .empty}).splitSorted { statistics1, statistics2 in
            let dateToLocal1 = statistics1.startDate?.components(separatedBy: "T").first ?? ""
            let dateToLocal2 = statistics2.startDate?.components(separatedBy: "T").first ?? ""
            return dateToLocal1 == dateToLocal2
        }
        
        for (index, it) in statisticsPerDays.enumerated() {
            var timeCharged: Double = .zero
            var totalPower: Double = .zero
            it.forEach({
                timeCharged += $0.timeCharged ?? .zero
                totalPower += $0.totalPower ?? .zero
            })
            values1.append(BarChartDataEntry(x: Double(index), y: totalPower / 1000))
            values2.append(BarChartDataEntry(x: Double(index), y: timeCharged / 3600))
            xAxisValues.append(Date.UTCToLocal(date: it.first?.startDate ?? "").components(separatedBy: " ").first ?? "")
        }
        
        let setPower: BarChartDataSet = BarChartDataSet(entries: values1, label: self.languageManager.sessionSummaryEnergyKwh)
        let setBattery: BarChartDataSet = BarChartDataSet(entries: values2, label: self.languageManager.sessionSummaryChargingTime)
        setPower.setColor(Color.energyBarColors.uiColor)
        setBattery.setColor(Color.chargingTimeBarsColor.uiColor)
        setPower.highlightEnabled = false
        setPower.drawValuesEnabled = false
        setBattery.highlightEnabled = false
        setBattery.drawValuesEnabled = false
        setPower.axisDependency = YAxis.AxisDependency.left
        setBattery.axisDependency = YAxis.AxisDependency.right
        
        var dataSets = [BarChartDataSet]()
        dataSets.append(setPower)
        dataSets.append(setBattery)
        
        let data = BarChartData(dataSets: dataSets)
        chartView.data = data
        Self.loadXAxis(xAxis: chartView.xAxis, font: font, xAxisValues: xAxisValues, size: Double(statisticsPerDays.count), rotateLabel: true)
        if forEv {
            Self.loadYAxisLeft(axis: chartView.leftAxis, font: UIFont(name: .appFont, size: 11) ?? UIFont.systemFont(ofSize: 11))
            Self.loadYAxisRight(axis: chartView.rightAxis, font: UIFont(name: .appFont, size: 11) ?? UIFont.systemFont(ofSize: 11), forEv: forEv)
        } else {
            Self.loadYAxisLeftKwh(axis: chartView.leftAxis, font: UIFont(name: .appFont, size: 11) ?? UIFont.systemFont(ofSize: 11))
            Self.loadYAxisRightTime(axis: chartView.rightAxis, font: UIFont(name: .appFont, size: 11) ?? UIFont.systemFont(ofSize: 11))
        }
        Self.formatChart(chartView: chartView, numberOfBars: statisticsPerDays.count)
        return chartView
    }
    
    private static func loadXAxis(xAxis: XAxis, font: UIFont, xAxisValues: [String], size: Double, rotateLabel: Bool = true) {
        xAxis.valueFormatter = IndexAxisValueFormatter(values: xAxisValues)
        xAxis.labelPosition = XAxis.LabelPosition.bottom
        xAxis.drawGridLinesEnabled = false
        xAxis.centerAxisLabelsEnabled = true
        xAxis.granularity = 1.0
        xAxis.granularityEnabled = true
        
        if rotateLabel {
            xAxis.labelRotationAngle = -45.0
        }
        
        xAxis.labelFont = font
        xAxis.labelTextColor = .gray
        xAxis.axisMinimum = 0.0
        xAxis.axisMaximum = size
    }
    
    private static func formatChart(chartView: BarChartView, numberOfBars: Int) {
        let groupSpace = 0.1
        let barSpace = 0.03
        let barWidth = 0.42
        let barChartRender = BarChartRenderer(dataProvider: chartView, animator: chartView.chartAnimator, viewPortHandler: chartView.viewPortHandler)
        chartView.renderer = barChartRender
        chartView.chartDescription.enabled = false
        chartView.setScaleEnabled(false)
        chartView.animate(xAxisDuration: 2)
        chartView.animate(xAxisDuration: 2, yAxisDuration: 2)
        chartView.animate(yAxisDuration: 2)
        chartView.barData?.barWidth = barWidth
        chartView.groupBars(fromX: 0.0, groupSpace: groupSpace, barSpace: barSpace)
        chartView.setVisibleXRangeMaximum(10)
    }
    
    private static func loadYAxisRightTime(axis: YAxis, font: UIFont) {
        axis.removeAllLimitLines()
        axis.labelFont = font
        axis.labelPosition = YAxis.LabelPosition.outsideChart
        axis.labelTextColor = .gray
        axis.drawGridLinesEnabled = false
        axis.axisMinimum = 0.0
        let valueFormatter: YAxisValueFormatterForTime = YAxisValueFormatterForTime()
        axis.valueFormatter = valueFormatter
    }
    
    private static func loadYAxisRight(axis: YAxis, font: UIFont, forEv: Bool = false) {
        axis.removeAllLimitLines()
        axis.labelFont = font
        axis.labelPosition = YAxis.LabelPosition.outsideChart
        axis.labelTextColor = .gray
        axis.drawGridLinesEnabled = false
        axis.axisMinimum = 0.0
        if forEv {
            let valueFormatter: YAxisValueFormatterForTime = YAxisValueFormatterForTime()
            axis.valueFormatter = valueFormatter
        } else {
            let valueFormatter: YAxisValueFormatterForPercentage = YAxisValueFormatterForPercentage()
            axis.valueFormatter = valueFormatter
        }
    }
    
    private static func loadYAxisLeft(axis: YAxis, font: UIFont) {
        axis.removeAllLimitLines()
        axis.labelFont = font
        axis.labelPosition = YAxis.LabelPosition.outsideChart
        axis.labelTextColor = .gray
        axis.drawGridLinesEnabled = false
        axis.axisMinimum = 0.0
        let valueFormatter: YAxisLefValueFormatterForKw = YAxisLefValueFormatterForKw()
        axis.valueFormatter = valueFormatter
    }
    
    private static func loadYAxisLeftKwh(axis: YAxis, font: UIFont) {
        axis.removeAllLimitLines()
        axis.labelFont = font
        axis.labelPosition = YAxis.LabelPosition.outsideChart
        axis.labelTextColor = .gray
        axis.drawGridLinesEnabled = false
        axis.axisMinimum = 0.0
        let valueFormatter: YAxisLeftValueFormatterForKwh = YAxisLeftValueFormatterForKwh()
        axis.valueFormatter = valueFormatter
    }
    
    private static func loadLegend(chartView: BarChartView) {
        let legend: Legend = chartView.legend
        legend.wordWrapEnabled = true
        legend.textHeightMax = 12
        legend.verticalAlignment = Legend.VerticalAlignment.bottom
        legend.horizontalAlignment = Legend.HorizontalAlignment.center
        legend.orientation = Legend.Orientation.horizontal
        legend.drawInside = false
        legend.form = Legend.Form.circle
        legend.textColor = Color.secondaryTextColor.uiColor
    }
    
}

public final class YAxisValueFormatterForTime: NSObject, AxisValueFormatter {
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return value == 0.0 ? "h" : String(Int(value.rounded(.toNearestOrEven)))
    }
    
}

public final class YAxisValueFormatterForPercentage: NSObject, AxisValueFormatter {
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return value == 0.0 ? "%" : String(Int(value))
    }
    
}

public final class YAxisLeftValueFormatterForKwh: NSObject, AxisValueFormatter {
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return value == 0.0 ? "kWh" : String(Int(value.rounded(.toNearestOrEven)))
    }
    
}

public final class YAxisLefValueFormatterForKw: NSObject, AxisValueFormatter {
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return value == 0.0 ? "kW" : String(Int(value))
    }
    
}
