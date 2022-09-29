//
//  EVIOHourPicker.swift
//  EVIOHourPicker
//
//  Created by Tiago Moreira on 02/06/2020.
//  Copyright © 2020 Tiago Moreira. All rights reserved.
//

import UIKit
import SwiftUI

public protocol EVIOHourPickerDelegate {
    func evioHourPicker(evioHourPicker: EVIOHourPicker, didSelectItem: String)
}

final public class EVIOHourPicker: UIPickerView {
    
    //MARK: - PRIVATE PROPERTIES
    fileprivate var hoursArrayToDisplay24: [String]!
    fileprivate var hoursArrayToDisplay12: [String]!
    fileprivate var meridiems: [String] = ["AM", "PM"]
    fileprivate var selected12Hour: String!
    fileprivate var selectedMeridiem: String!
    fileprivate let deviceLocale = Locale.preferredLanguages.first!.replacingOccurrences(of: "-", with: "_")
    fileprivate let twelveHourLocales = ["en_US", "en_GB"]
    fileprivate var useTwelveHourClock: Bool = false
    
    //MARK: - PUBLIC PROPERTIES
    
    public dynamic var font = UIFont(name: "Nunito-Bold", size: 15) ?? UIFont.systemFont(ofSize: 15, weight: .bold) {
        didSet {
            self.basicSetup()
        }
    }
    
    @IBInspectable public dynamic var textColor: UIColor = .label {
        didSet {
            self.basicSetup()
        }
    }
    
    public var selectedHour: String = ""
    public var selectedUtcHour: String = ""
    public var evioHourDelegate: EVIOHourPickerDelegate?
    
    //MARK: - METHODS
    public init() {
        super.init(frame: .zero)
        self.basicSetup()
    }
    
    public init(color: UIColor) {
        super.init(frame: .zero)
        self.textColor = color
        self.basicSetup()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.basicSetup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.basicSetup()
    }
    
    fileprivate func basicSetup() {
        self.selected12Hour = ""
        self.selectedMeridiem = ""
        if self.twelveHourLocales.contains(self.deviceLocale) {
            self.useTwelveHourClock = true
        }else {
            self.useTwelveHourClock = false
        }
        if self.useTwelveHourClock {
            var twelvehourArray: [String] = []
            for i in 1...12 {
                for j in 0...59 {
                    var hour: String = ""
                    var min: String = ""
                    if j < 10 {
                        min = "0\(j)"
                    }else {
                        min = String(j)
                    }
                    if i < 10 {
                        hour = "0\(i)"
                    }else {
                        hour = String(i)
                    }
                    let formattedString = "\(hour):\(min)"
                    twelvehourArray.append(formattedString)
                }
            }
            self.hoursArrayToDisplay12 = twelvehourArray
            
        }
        var twentyFourhourArray: [String] = []
        for i in 0...23 {
            for j in 0...59 {
                var hour: String = ""
                var min: String = ""
                if j < 10 {
                    min = "0\(j)"
                }else {
                    min = String(j)
                }
                if i < 10 {
                    hour = "0\(i)"
                }else {
                    hour = String(i)
                }
                let formattedString = "\(hour):\(min)"
                twentyFourhourArray.append(formattedString)
            }
        }
        self.hoursArrayToDisplay24 = twentyFourhourArray
        self.delegate = self
        self.dataSource = self
        self.preSelectCurrentTime()
    }
    
    fileprivate func preSelectCurrentTime() {
        if self.useTwelveHourClock {
            let (curentHour, currentMeridiem) = self.convertFromTwentyFourHourToTwelveHour(hour: self.selectCurrentHour())
            let hourIndex = self.hoursArrayToDisplay12.firstIndex(of: curentHour) ?? -1
            let meridiemIndex = self.meridiems.firstIndex(of: currentMeridiem) ?? -1
            if hourIndex > -1 && meridiemIndex > -1 {
                self.selectRow(hourIndex, inComponent: 0, animated: false)
                self.selectRow(meridiemIndex, inComponent: 1, animated: false)
                self.selectedMeridiem = self.meridiems[meridiemIndex]
            }else {
                self.selectRow(0, inComponent: 0, animated: false)
                self.selectRow(0, inComponent: 1, animated: false)
                self.selectedMeridiem = self.meridiems[0]
            }
            self.updateSelectedItems(hour: self.convertFromTwelveToTwentyFourHour(hour: curentHour, meridiem: currentMeridiem))
        }else {
            let currentHour = self.selectCurrentHour()
            let index = self.hoursArrayToDisplay24.firstIndex(of: currentHour) ?? -1
            if index > -1 {
                self.selectRow(index, inComponent: 0, animated: false)
            }else {
                self.selectRow(0, inComponent: 0, animated: false)
            }
            self.updateSelectedItems(hour: currentHour)
        }
    }
    
    fileprivate func updateSelectedItems(hour: String) {
        let index = self.hoursArrayToDisplay24.firstIndex(of: hour) ?? -1
        if index > -1 {
            self.selectedHour = self.hoursArrayToDisplay24[index]
            self.selectedUtcHour = self.convertHourToUtc(hour: hour)
        }else {
            self.selectedHour = self.hoursArrayToDisplay24[0]
            self.selectedUtcHour = self.convertHourToUtc(hour: hour)
        }
        self.evioHourDelegate?.evioHourPicker(evioHourPicker: self, didSelectItem: self.selectedHour)
    }
    
    public func setHour(hour: String) {
        if let index = self.hoursArrayToDisplay24.firstIndex(of: hour) {
            self.selectRow(index, inComponent: .zero, animated: false)
        }
    }
    
}

//MARK: - PICKER VIEW DELEGATE
extension EVIOHourPicker: UIPickerViewDelegate {
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if self.useTwelveHourClock {
            if component == 0 {
                self.selected12Hour = self.hoursArrayToDisplay12[row]
            }else {
                self.selectedMeridiem = self.meridiems[row]
            }
            if !self.selected12Hour.isEmpty && !self.selectedMeridiem.isEmpty {
                let convertedHour = self.convertFromTwelveToTwentyFourHour(hour: self.selected12Hour, meridiem: self.selectedMeridiem)
                self.selectedHour = convertedHour
                self.updateSelectedItems(hour: convertedHour)
            }
        } else {
            let hour = self.hoursArrayToDisplay24[row]
            self.selectedHour = hour
            self.updateSelectedItems(hour: hour)
        }
    }
    
}

//MARK: - PICKER VIEW DATA SOURCE
extension EVIOHourPicker: UIPickerViewDataSource {
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return self.useTwelveHourClock ? 2 : 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if self.useTwelveHourClock {
            if component == 0 {
                return self.hoursArrayToDisplay12.count
            }else {
                return self.meridiems.count
            }
        }else {
            return hoursArrayToDisplay24.count
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let height: CGFloat = 1
        for subview in pickerView.subviews {
            if subview.subviews.isEmpty {
                let topLineView = UIView()
                topLineView.frame = CGRect(x: 0.0, y: 0.0, width: subview.frame.size.width, height: height)
                topLineView.backgroundColor = Color.tertiaryTextColor.uiColor
                subview.addSubview(topLineView)
                let bottomLineView = UIView()
                bottomLineView.frame = CGRect(x: 0.0, y: subview.frame.size.height-(subview.frame.size.height * 0.25), width: subview.frame.size.width, height: height)
                bottomLineView.backgroundColor = Color.tertiaryTextColor.uiColor
                subview.addSubview(bottomLineView)
            }
            subview.backgroundColor = .clear
        }
        var pickerLabel = view as? UILabel
        
        if pickerLabel == nil
        {
            pickerLabel = UILabel()
        }
        var item: String!
        if self.useTwelveHourClock {
            if component == 0 {
                item = self.hoursArrayToDisplay12[row]
            }else {
                item = self.meridiems[row]
            }
        }else {
            item = self.hoursArrayToDisplay24[row]
        }
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attributes: [NSMutableAttributedString.Key: Any] = [
            .foregroundColor: self.textColor,
            .font: self.font,
            .paragraphStyle: paragraph
        ]
        let attributedTitle = NSMutableAttributedString(string: item, attributes: attributes)
        
        pickerLabel?.attributedText = attributedTitle
        
        return pickerLabel!
    }
    
}

//MARK: - HELPER METHODS
extension EVIOHourPicker {
    
    fileprivate func selectCurrentHour() -> String {
        let date = Date()
        var calendar = Calendar.current
        calendar.timeZone = .current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        var h: String = ""
        var m: String = ""
        if hour < 10 {
            h = "0\(hour)"
        }else {
            h = String(hour)
        }
        if minutes < 10 {
            m = "0\(minutes)"
        }else {
            m = String(minutes)
        }
        return "\(h):\(m)"
    }
    
    fileprivate func convertFromTwelveToTwentyFourHour(hour: String, meridiem: String) -> String {
        let hoursArray: [String] = hour.components(separatedBy: ":")
        var convertedHour: String = ""
        if meridiem == "AM" {
            switch hoursArray[0] {
            case "12":
                convertedHour = "00"
            default:
                convertedHour = hoursArray[0]
            }
        }else {
            switch hoursArray[0] {
            case "01":
                convertedHour = "13"
            case "02":
                convertedHour = "14"
            case "03":
                convertedHour = "15"
            case "04":
                convertedHour = "16"
            case "05":
                convertedHour = "17"
            case "06":
                convertedHour = "18"
            case "07":
                convertedHour = "19"
            case "08":
                convertedHour = "20"
            case "09":
                convertedHour = "21"
            case "10":
                convertedHour = "22"
            case "11":
                convertedHour = "23"
            default:
                convertedHour = hoursArray[0]
            }
        }
        return "\(convertedHour):\(hoursArray[1])"
    }
    
    fileprivate func convertFromTwentyFourHourToTwelveHour(hour: String) -> (String, String) {
        let hoursArray: [String] = hour.components(separatedBy: ":")
        var convertedHour: String = ""
        var meridiem: String = ""
        switch hoursArray[0] {
        case "13":
            convertedHour = "01"
        case "14":
            convertedHour = "02"
        case "15":
            convertedHour = "03"
        case "16":
            convertedHour = "04"
        case "17":
            convertedHour = "05"
        case "18":
            convertedHour = "06"
        case "19":
            convertedHour = "07"
        case "20":
            convertedHour = "08"
        case "21":
            convertedHour = "09"
        case "22":
            convertedHour = "10"
        case "23":
            convertedHour = "11"
        case "00":
            convertedHour = "12"
        default:
            convertedHour = hoursArray[0]
        }
        if hoursArray[0] >= "12" {
            meridiem = "PM"
        }else {
            meridiem = "AM"
        }
        return ("\(convertedHour):\(hoursArray[1])", meridiem)
    }
    
    fileprivate func convertHourToUtc(hour: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_PT")
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let date = Date()
        var calendar = Calendar.current
        calendar.timeZone = .current
        let stringDate = "\(calendar.component(.day, from: date))-\(calendar.component(.month, from: date))-\(calendar.component(.year, from: date)) \(hour)"
        calendar.timeZone = TimeZone(identifier: "UTC")!
        guard let newDate = dateFormatter.date(from: stringDate) else {return hour}
        let hour = calendar.component(.hour, from: newDate)
        let minutes = calendar.component(.minute, from: newDate)
        var h: String = ""
        var m: String = ""
        if hour < 10 {
            h = "0\(hour)"
        }else {
            h = String(hour)
        }
        if minutes < 10 {
            m = "0\(minutes)"
        }else {
            m = String(minutes)
        }
        return "\(h):\(m)"
    }
    
}
