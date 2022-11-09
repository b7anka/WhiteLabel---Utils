//
//  TimeInterval+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/12/2021.
//

import Foundation

/// # EXTENSION THAT ADD CUSTOM PROPERTIES AND METHOD TO THE BUILT IN SWIFT'S TIME INTERVAL TYPE ALIAS
extension TimeInterval: Identifiable {
    
    // the time for which an url request must fail in development environment (seconds)
    public static let timeoutForDevelopment: TimeInterval = 120
    // the time for which a url request must fail in production mode (seconds)
    public static let timeoutForProduction: TimeInterval = 10
    
    // tells swift that this struct is identifiable by a string that contains it's value
    public var id: String {
        return "\(self)"
    }
    
    public var asDaysHoursMinutesAndSeconds: (days: Int, hours: Int, minutes: Int, seconds: Int) {
        let days: Int = Int((self / 86400))
        let hours: Int = Int((self.truncatingRemainder(dividingBy: 86400)) / 3600)
        let minutes: Int = Int((self.truncatingRemainder(dividingBy: 3600)) / 60)
        let seconds: Int = Int((self.truncatingRemainder(dividingBy: 3600)).truncatingRemainder(dividingBy: 60))
        return (days: days, hours: hours, minutes: minutes, seconds: seconds)
    }
    
    public func timeAsString(showDays: Bool = true, showSeconds: Bool = false) -> String {
        let time: (days: Int, hours: Int, minutes: Int, seconds: Int) = self.asDaysHoursMinutesAndSeconds
        var formattedString: String = ""
        if showDays && time.days > .zero {
            formattedString += "\(time.days)d"
        }
        if time.hours > .zero {
            if time.hours < 10 && time.days > .zero {
                formattedString += "0\(time.hours)h"
            } else {
                formattedString += "\(time.hours)h"
            }
        }
        if time.minutes > .zero {
            if time.minutes < 10 && time.hours > .zero {
                formattedString += "0\(time.minutes)m"
            } else {
                formattedString += "\(time.minutes)m"
            }
        }
        if showSeconds && time.seconds > .zero {
            if time.seconds < 10 && time.minutes > .zero {
                formattedString += "0\(time.seconds)s"
            } else {
                formattedString += "\(time.seconds)s"
            }
        }
        return formattedString.isEmpty ? "-" : formattedString
    }
    
}
