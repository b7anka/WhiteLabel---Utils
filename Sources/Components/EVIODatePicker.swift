//
//  EVIODatePicker.swift
//  evio
//
//  Created by Tiago Moreira on 17/04/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit
import SwiftUI

public protocol EVIODatePickerDelegate {
    func evioDatePicker(evioDatePicker: EVIODatePicker, didSelectItem: String)
}

final public class EVIODatePicker: UIPickerView {
    
    private var weekDays: [String]!
    private var months: [String]!
    private var weekDaysLong: [String]!
    private var monthsLong: [String]!
    private var dates: [String]!
    private var arrayOfUnFormattedDates: [String]!
    private var numberOfFutureYearsAllowed: Int = 5
    private var numberOfPastYearsAllowed: Int = 5
    
    public var selectedDate: String = ""
    public var utcSelectedDate: String = ""
    public var evioDatePickerDelegate: EVIODatePickerDelegate? {
        didSet {
            self.evioDatePickerDelegate?.evioDatePicker(evioDatePicker: self, didSelectItem: self.selectedDate)
        }
    }
    
    @IBInspectable
    public var textColor: UIColor = UIColor(red: 53.0/255.0, green: 56.0/255.0, blue: 65.0/255.0, alpha: 1.0) {
        didSet {
            self.reloadAllComponents()
        }
    }
    public var font: UIFont = UIFont(name: "Nunito-Bold", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0, weight: .bold) {
        didSet {
            self.reloadAllComponents()
        }
    }
    @IBInspectable
    public var shortMonths: Bool = true {
        didSet {
            self.prepare()
        }
    }
    @IBInspectable
    public var shortWeekDays: Bool = true {
        didSet {
            self.prepare()
        }
    }
    @IBInspectable
    public var showYears: Bool = false {
        didSet {
            self.prepare()
        }
    }
    @IBInspectable
    public var futureYearsAllowed: Int = 0 {
        didSet {
            if futureYearsAllowed == 0 {
                self.allowFutureDates = false
            }else {
                self.numberOfFutureYearsAllowed = futureYearsAllowed
                if self.allowFutureDates {
                    self.prepare()
                }
            }
        }
    }
    @IBInspectable
    public var pastYearsAllowed: Int = 0 {
        didSet {
            if pastYearsAllowed == 0 {
                self.allowPastDates = false
            }else {
                self.numberOfPastYearsAllowed = pastYearsAllowed
                if self.allowPastDates {
                    self.prepare()
                }
            }
        }
    }
    @IBInspectable
    public  var allowPastDates: Bool = false {
        didSet {
            if allowPastDates && self.pastYearsAllowed > 0 {
                self.showYears = true
            }
            self.prepare()
        }
    }
    @IBInspectable
    public var allowFutureDates: Bool = false {
        didSet {
            if allowFutureDates && self.futureYearsAllowed > 0 {
                self.showYears = true
            }
            self.prepare()
        }
    }
    @IBInspectable
    public var showOnlyCurrentYear: Bool = false {
        didSet {
            if showOnlyCurrentYear {
                self.allowPastDates = false
                self.allowFutureDates = false
            }
            self.prepare()
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.prepare()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.prepare()
    }
    
    override public func addSubview(_ view: UIView) {
        if #available(iOS 14.0, *) {
            view.setValue(UIColor.clear, forKey: "backgroundColor")
        }
        super.addSubview(view)
    }
    
    private func prepare() {
        let dtFormatter = DateFormatter()
        dtFormatter.locale = Locale(identifier: Locale.preferredLanguages.first!.replacingOccurrences(of: "-", with: "_"))
        
        var weekDays: [String] = []
        var weekDaysLong: [String] = []
        var weekDay = 0
        for _ in 1...7 {
            weekDays.append(dtFormatter.shortWeekdaySymbols[weekDay].capitalized)
            weekDaysLong.append(dtFormatter.weekdaySymbols[weekDay].capitalized)
            weekDay += 1
        }
        self.weekDays = weekDays
        self.weekDaysLong = weekDaysLong
        
        var months: [String] = []
        var monthsLong: [String] = []
        var month = 0
        for _ in 1...12 {
            months.append(dtFormatter.shortMonthSymbols[month].capitalized)
            monthsLong.append(dtFormatter.monthSymbols[month].capitalized)
            month += 1
        }
        self.months = months
        self.monthsLong = monthsLong
        self.delegate = self
        self.dataSource = self
        self.setupData()
    }
    
    private func setupData() {
        self.dates = []
        self.arrayOfUnFormattedDates = []
        
        if self.showOnlyCurrentYear {
            let currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)
            for i in 1...12 {
                let days = self.daysForMonths(month: i, year: currentYear)
                for j in 1...days {
                    let dateString = String(currentYear) + "-" + String(i) + "-" + String(j)
                    self.arrayOfUnFormattedDates.append(dateString)
                    self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                }
            }
        }
        else if !self.allowPastDates && !self.allowFutureDates {
            var month = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.month, from: NSDate() as Date)
            for _ in month...12 {
                let currentMonth = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.month, from: NSDate() as Date)
                let currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)
                let days = self.daysForMonths(month: month, year: currentYear)
                if month == currentMonth {
                    var day = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.day, from: NSDate() as Date)
                    for _ in day...days {
                        let dateString = String(currentYear) + "-" + String(month) + "-" + String(day)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                        day += 1
                    }
                }else {
                    for i in 1...days {
                        let dateString = String(currentYear) + "-" + String(month) + "-" + String(i)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                    }
                }
                month += 1
            }
            
        }else if self.allowFutureDates && self.allowPastDates {
            var currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)-self.numberOfPastYearsAllowed
            for _ in 1...self.numberOfPastYearsAllowed {
                for i in 1...12 {
                    let days = self.daysForMonths(month: i, year: currentYear)
                    for j in 1...days {
                        let dateString = String(currentYear) + "-" + String(i) + "-" + String(j)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                    }
                }
                currentYear+=1
            }
            currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)
            for _ in 0...self.numberOfFutureYearsAllowed {
                for i in 1...12 {
                    let days = self.daysForMonths(month: i, year: currentYear)
                    for j in 1...days {
                        let dateString = String(currentYear) + "-" + String(i) + "-" + String(j)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                    }
                }
                currentYear+=1
            }
        }else if self.allowFutureDates {
            var month = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.month, from: NSDate() as Date)
            for _ in month...12 {
                let currentMonth = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.month, from: NSDate() as Date)
                let currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)
                let days = self.daysForMonths(month: month, year: currentYear)
                if month == currentMonth {
                    var day = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.day, from: NSDate() as Date)
                    for _ in day...days {
                        let dateString = String(currentYear) + "-" + String(month) + "-" + String(day)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                        day += 1
                    }
                }else {
                    for i in 1...days {
                        let dateString = String(currentYear) + "-" + String(month) + "-" + String(i)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                    }
                }
                month += 1
            }
            var currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)+1
            for _ in 1...self.numberOfFutureYearsAllowed {
                for i in 1...12 {
                    let days = self.daysForMonths(month: i, year: currentYear)
                    for j in 1...days {
                        let dateString = String(currentYear) + "-" + String(i) + "-" + String(j)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                    }
                }
                currentYear+=1
            }
        }else {
            var currentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)-self.numberOfPastYearsAllowed
            for _ in 1...self.numberOfPastYearsAllowed+1 {
                for i in 1...12 {
                    let days = self.daysForMonths(month: i, year: currentYear)
                    for j in 1...days {
                        let dateString = String(currentYear) + "-" + String(i) + "-" + String(j)
                        self.arrayOfUnFormattedDates.append(dateString)
                        self.dates.append(self.presentDateAccordingToLocale(dateString: dateString))
                    }
                }
                currentYear+=1
            }
        }
        self.setTodayAsDate()
    }
    
    public func setTodayAsDate() {
        let presentDay = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.day, from: NSDate() as Date)
        let presentYear = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.year, from: NSDate() as Date)
        let presentMonth = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!.component(.month, from: NSDate() as Date)
        var index = -1
        let today = "\(presentYear)-\(presentMonth)-\(presentDay)"
        for i in 0...self.arrayOfUnFormattedDates.count-1 {
            let s = self.arrayOfUnFormattedDates[i]
            if s == today {
                index = i
            }
        }
        if index > -1 {
            self.selectRow(index, inComponent: 0, animated: false)
            self.selectedDate = self.dates[index]
            self.utcSelectedDate = self.localToUTC(date: self.arrayOfUnFormattedDates[index] + " \(self.getCurrentTimeAsString())")
        } else {
            self.selectRow(0, inComponent: 0, animated: false)
            self.selectedDate = self.dates[0]
            self.utcSelectedDate = self.localToUTC(date: self.arrayOfUnFormattedDates[0] + " \(self.getCurrentTimeAsString())")
        }
    }
    
    public func setDate(date: String) {
        var index = -1
        for i in 0...self.dates.count-1 {
            let s: String = self.dates[i]
            if s == date {
                index = i
            }
        }
        if index > -1 {
            self.selectRow(index, inComponent: 0, animated: false)
            self.selectedDate = self.dates[index]
            self.utcSelectedDate = self.localToUTC(date: self.arrayOfUnFormattedDates[index] + " \(self.getCurrentTimeAsString())")
            self.evioDatePickerDelegate?.evioDatePicker(evioDatePicker: self, didSelectItem: self.selectedDate)
        }
    }
    
}

extension EVIODatePicker: UIPickerViewDelegate {
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedDate = self.dates[row]
        self.utcSelectedDate = self.localToUTC(date: self.arrayOfUnFormattedDates[row] + " \(self.getCurrentTimeAsString())")
        self.evioDatePickerDelegate?.evioDatePicker(evioDatePicker: self, didSelectItem: self.selectedDate)
    }
}

extension EVIODatePicker: UIPickerViewDataSource {
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
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
        let item = self.dates[row]
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
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.dates.count
    }
    
}

extension EVIODatePicker {
    
    private func localToUTC(date:String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let date: Date = formatter.date(from: date) else { return date }
        let isoFormatter = ISO8601DateFormatter()
        let convertedDate = isoFormatter.string(from: date)
        return convertedDate
    }
    
    private func presentDateAccordingToLocale(dateString: String) -> String {
        let deviceLocale = Locale.preferredLanguages.first!.replacingOccurrences(of: "-", with: "_")
        let allowedLocales = ["en_US", "en_GB", "pt_PT"]
        var locale = "en_GB"
        if allowedLocales.contains(deviceLocale) {
            locale = deviceLocale
        }
        let calendar = Calendar.current
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "yyyy-MM-dd"
        dateFormat.locale = Locale(identifier: "en_US_POSIX")
        guard let date = dateFormat.date(from: dateString) else {return ""}
        let components = calendar.dateComponents([.weekday, .day, .month, .year], from: date)
        var formattedString: String!
        switch locale {
        case "en_US":
            if self.showYears {
                if !self.shortMonths && !self.shortWeekDays {
                    formattedString = String(format: "%@, %@ %d %d", self.weekDaysLong[components.weekday!-1], self.monthsLong[components.month!-1], components.day!, components.year!)
                }
                else if self.shortMonths && self.shortWeekDays {
                    formattedString = String(format: "%@, %@ %d %d", self.weekDays[components.weekday!-1], self.months[components.month!-1], components.day!, components.year!)
                }else if self.shortMonths {
                    formattedString = String(format: "%@, %@ %d %d", self.weekDaysLong[components.weekday!-1], self.months[components.month!-1], components.day!, components.year!)
                }else {
                    formattedString = String(format: "%@, %@ %d %d", self.weekDays[components.weekday!-1], self.monthsLong[components.month!-1], components.day!, components.year!)
                }
            }else {
                if !self.shortMonths && !self.shortWeekDays {
                    formattedString = String(format: "%@, %@ %d", self.weekDaysLong[components.weekday!-1], self.monthsLong[components.month!-1], components.day!)
                }
                else if self.shortMonths && self.shortWeekDays {
                    formattedString = String(format: "%@, %@ %d", self.weekDays[components.weekday!-1], self.months[components.month!-1], components.day!)
                }else if self.shortMonths {
                    formattedString = String(format: "%@, %@ %d", self.weekDaysLong[components.weekday!-1], self.months[components.month!-1], components.day!)
                }else {
                    formattedString = String(format: "%@, %@ %d", self.weekDays[components.weekday!-1], self.monthsLong[components.month!-1], components.day!)
                }
            }
        default:
            if self.showYears {
                if !self.shortMonths && !self.shortWeekDays {
                    formattedString = String(format: "%@, %d %@ %d", self.weekDaysLong[components.weekday!-1], components.day!, self.monthsLong[components.month!-1], components.year!)
                }
                else if self.shortMonths && self.shortWeekDays {
                    formattedString = String(format: "%@, %d %@ %d", self.weekDays[components.weekday!-1], components.day!, self.months[components.month!-1], components.year!)
                }else if self.shortMonths {
                    formattedString = String(format: "%@, %d %@ %d", self.weekDaysLong[components.weekday!-1], components.day!, self.months[components.month!-1], components.year!)
                }else {
                    formattedString = String(format: "%@, %d %@ %d", self.weekDays[components.weekday!-1], components.day!, self.monthsLong[components.month!-1], components.year!)
                }
            }else {
                if !self.shortMonths && !self.shortWeekDays {
                    formattedString = String(format: "%@, %d %@", self.weekDaysLong[components.weekday!-1], components.day!, self.monthsLong[components.month!-1])
                }
                else if self.shortMonths && shortWeekDays {
                    formattedString = String(format: "%@, %d %@", self.weekDays[components.weekday!-1], components.day!, self.months[components.month!-1])
                }else if self.shortMonths {
                    formattedString = String(format: "%@, %d %@", self.weekDaysLong[components.weekday!-1], components.day!, self.months[components.month!-1])
                }else {
                    formattedString = String(format: "%@, %d %@", self.weekDays[components.weekday!-1], components.day!, self.monthsLong[components.month!-1])
                }
            }
        }
        return formattedString
    }
    
    private func isLeapYear(year: Int) -> Bool {
        return ((year%100 != 0) && (year%4 == 0)) || year%400 == 0
    }
    
    private func daysForMonths(month: Int, year: Int) -> Int {
        switch month {
        case 1,3,5,7,8,10,12:
            return 31
        case 4,6,9,11:
            return 30
        default:
            if self.isLeapYear(year: year) {
                return 29
            }else {
                return 28
            }
        }
    }
    
    private func getCurrentTime() -> (Int, Int, Int) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        return (hour, minutes, seconds)
    }
    
    private func getCurrentTimeAsString() -> String {
        let (h, m, s) = self.getCurrentTime()
        var hour = ""
        var minutes = ""
        var seconds = ""
        if h < 10 {
            hour = "0\(h)"
        }else {
            hour = "\(h)"
        }
        if m < 10 {
            minutes = "0\(m)"
        }else {
            minutes = "\(m)"
        }
        if s < 10 {
            seconds = "0\(s)"
        }else {
            seconds = "\(s)"
        }
        return String(format: "%@:%@:%@", hour, minutes, seconds)
    }
}
