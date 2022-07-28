//
//  Date+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 22/01/2022.
//

import Foundation

public extension Date {
    
    static func convertHourToLocal(hour: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let sourceDate = formatter.date(from: hour)
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "dd-MM-yyyy HH:mm"
        guard sourceDate != nil else {return hour}
        let localTime = formatter2.string(from: sourceDate!)
        let components = localTime.components(separatedBy: " ")
        let componentsHours = components[1].components(separatedBy: ":")
        guard componentsHours.count == 2 else {return hour}
        let hour = Int(componentsHours[0])
        let minutes = Int(componentsHours[1])
        var h: String = ""
        var m: String = ""
        if hour! < 10 {
            h = "0\(hour!)"
        } else {
            h = String(hour!)
        }
        if minutes! < 10 {
            m = "0\(minutes!)"
        } else {
            m = String(minutes!)
        }
        return "\(h):\(m)"
    }
    
    static func convertHourToUtc(hour: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .current
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
        } else {
            h = String(hour)
        }
        if minutes < 10 {
            m = "0\(minutes)"
        } else {
            m = String(minutes)
        }
        return "\(h):\(m)"
    }
    
    static func convertHourToIso8601(hour: String) -> String {
        let date = Date()
        let iso8601DateFormatter = ISO8601DateFormatter()
        iso8601DateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        let string = iso8601DateFormatter.string(from: date)
        let dateComponent = string.components(separatedBy: "T")[0]
        let restOfDate = string.components(separatedBy: ".")[1]
        let finalString = "\(dateComponent)T\(hour):00.\(restOfDate)"
        return finalString
    }
    
    static func UTCToLocal(date: String) -> String {
        guard !date.isEmpty else {return date}
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let sourceDate = formatter.date(from: date)
        let formatter2 = DateFormatter()
        formatter2.dateFormat = "dd-MM-yyyy HH:mm:ss"
        let localTime: String
        if let date = sourceDate {
            localTime = formatter2.string(from: date)
        } else {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            let sourceDate = formatter.date(from: date)
            if let localDate = sourceDate {
                localTime = formatter2.string(from: localDate)
            } else {
                localTime = date
            }
        }
        return localTime
    }
    
    static func localToUTC(date:String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-mm-yyyy HH:mm:ss"
        let utc = NSTimeZone(abbreviation: "UTC")
        formatter.timeZone = utc as TimeZone?
        formatter.dateFormat = "dd-mm-yyyy HH:mm:ss"
        let localDate: Date? = formatter.date(from: date)
        let timeZoneOffset: TimeInterval = TimeInterval(NSTimeZone.default.secondsFromGMT())
        let utcTimeInterval: TimeInterval? = (localDate?.timeIntervalSinceReferenceDate)! - timeZoneOffset
        let utcCurrentDate = Date(timeIntervalSinceReferenceDate: utcTimeInterval!)
        return formatter.string(from: utcCurrentDate)
    }
    
    static func UTCToLocalHourOnly(date: String) -> String {
        let localTime: String = self.UTCToLocal(date: date)
        let components: [String] = localTime.components(separatedBy: " ")
        guard let hourComponents: [String] = components.last?.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: ":"), hourComponents.count == 3 else {return date}
        return "\(hourComponents[0]):\(hourComponents[1])"
    }
    
    static func convertDateToInternetDate(date: Date) -> String {
        let iso8601DateFormatter = ISO8601DateFormatter()
        iso8601DateFormatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        let string = iso8601DateFormatter.string(from: date)
        print(string)
        return string
    }
    
    static func getStartAndEndDateForInsights(numberOfMonthstoSubtract: Int) -> (String, String) {
        var dateStop = Date()
        guard var dateStart = Calendar.current.date(byAdding: .month, value: -numberOfMonthstoSubtract, to: dateStop) else {
            return (.empty, .empty)
        }
        let dateFormatter = DateFormatter()
        dateFormatter.locale = .current
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateStartString = dateFormatter.string(from: dateStart)
        let dateStopString = dateFormatter.string(from: dateStop)
        var dateStartComponents = dateStartString.components(separatedBy: " ")
        dateStartComponents[1] = "01:00:00"
        var dateStopComponents = dateStopString.components(separatedBy: " ")
        dateStopComponents[1] = "23:59:00"
        let newStartDateString = "\(dateStartComponents[0]) \(dateStartComponents[1])"
        let newStopDateString = "\(dateStopComponents[0]) \(dateStopComponents[1])"
        guard let newStartDate = dateFormatter.date(from: newStartDateString), let newStopDate = dateFormatter.date(from: newStopDateString) else {
            return (.empty, .empty)
        }
        dateStart = newStartDate
        dateStop = newStopDate
        return (Self.convertDateToInternetDate(date: dateStart), Self.convertDateToInternetDate(date: dateStop))
    }
    
    static func formatDateForHistory(dateStart: String?, dateStop: String?) -> String {
        guard let dS = dateStart, let dSt = dateStop else { return .noValue }
        let dateStart = Self.UTCToLocal(date: dS)
        let dateStop = Self.UTCToLocal(date: dSt)
        let splittedStartDate = dateStart.components(separatedBy: " ")
        let splittedStopDate = dateStop.components(separatedBy: " ")
        guard !splittedStopDate.isEmpty && !splittedStartDate.isEmpty, let sH = splittedStartDate.last, let stH = splittedStopDate.last else { return .noValue }
        let splittedStartHours = sH.components(separatedBy: ":")
        let splittedStopHours = stH.components(separatedBy: ":")
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        guard let realStartDate = dateFormatter.date(from: dateStart) else { return .noValue }
        let calendar = Calendar.current
        let componentsStartDate = calendar.dateComponents([.year, .month, .day, .weekday], from: realStartDate)
        let startHours = "\(splittedStartHours[0]):\(splittedStartHours[1])"
        let stopHours = "\(splittedStopHours[0]):\(splittedStopHours[1])"
        return String(format: "%@, %@ %d | %@ - %@", EVIOAppUtils.shared.weekDaysLong[componentsStartDate.weekday!-1], EVIOAppUtils.shared.months[componentsStartDate.month!-1], componentsStartDate.day!, startHours, stopHours)
    }
    
}
