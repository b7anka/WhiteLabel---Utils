//
//  EVIOAppUtils.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 30/11/2021.
//

import Foundation
import UIKit
import WLModels
import MapKit

/// # HELPER SINGLETON STRUCT THAT CONTAINS
/// # UTILITY METHODS
public struct EVIOAppUtils {
    
    // MARK: - STATIC PROPERTIES
    public static let shared: EVIOAppUtils = EVIOAppUtils()
    
    public var weekDays: [String]
    public var weekDaysLong: [String]
    public var months: [String]
    public var monthsLong: [String]
    
    public init() {
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
    }
    
    // MARK: - PUBLIC METHODS
    
    /// # THIS METHOD TRIES TO RETURN A STRING FROM THE MAIN BUNDLE INFO DICTIONARY (Info.plist)
    /// - Parameter key: the dictionary key that the method should return the string for
    /// - Returns: a string with the value of the key received or nil if it cannot find it
    public func getInfoPlistValues(key: String) -> String? {
        // Checks whether the main info dictionary exists and if the value for the received key exists
        if let dictionary = Bundle.main.infoDictionary, let value = dictionary[key] as? String {
            // if true returns the string with value
            return value
        }
        // else return nil
        return nil
    }
    
    /// # THIS METHOD IS RESPONSIBLE FOR GETTING THE DEVICE'S PREFERRED LANGUAGE
    /// - Returns: returns a string that represents the device's preferred language or the default one if it cannot get the preferred from the device
    public func getDeviceLanguage() -> String {
        // checks if the first preferred language exists, if true then splits the first language by the "-" dash symbol and makes sure it can get the first one from the devided array
        if let locale = Locale.preferredLanguages.first, let lang = locale.components(separatedBy: "-").first?.trimmingCharacters(in: .whitespacesAndNewlines) {
            // if true returns it
            return lang
        }
        // else returns the default one
        return .defaultLanguage
    }
    
    /// # THIS METHOD IS RESPONSIBLE FOR GETTING THE DEVICE'S REGION
    /// - Returns: returns a string that represents the device's preferred language or the default one if it cannot get the preferred from the device
    public func getDeviceRegion() -> String {
        // checks if the first preferred language exists, if true then splits the first language by the "-" dash symbol and makes sure it can get the last one from the devided array
        if let locale = Locale.preferredLanguages.first, let region = locale.components(separatedBy: "-").last?.trimmingCharacters(in: .whitespacesAndNewlines) {
            // if true returns it
            return region
        }
        // else returns the default one
        return .defaultRegion
    }
    
    /// # METHOD THAT WILL SEND THE USER TO THE APP'S SETTINGS PAGE ON IOS
    /// - Parameter completion: the callback to be executed once settings page has been reached
    public func sendUserToSettings(_ completion: @escaping (Bool) -> Void) {
        // checks that we can get the url for the ios settings page
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            // if not returns from the function
            return
        }
        // checks whether the app can open that url
        if UIApplication.shared.canOpenURL(settingsUrl) {
            // if true then we tell the application to open it
            UIApplication.shared.open(settingsUrl, completionHandler: { (success) in
                // we then received the result for the operation that we pass as a parameter once we execute the callback
                completion(success)
            })
        }
    }
    
    /// # THIS METHOD TELLS THE APP TO RESIGN THE FIRST RESPONDER (KEYBOARD)
    public func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    /// # METHOD TO CALCULATE THE DISTANCE AND TIME BETWEEN TO COORDINATES
    /// - Parameters:
    ///   - sourceCoordinate: the place of origin
    ///   - destinationCoordinate: the place where to get to
    ///   - resultsInMeters: tells whether to return the results in meters. Defaults to false (sends in kilometers)
    ///   - completion: the callback to be executed once information is available
    public func calculateDistance(sourceCoordinate: CLLocationCoordinate2D, destinationCoordinate: CLLocationCoordinate2D, resultsInMeters: Bool = false, completion: @escaping (String) -> Void) {
        let request = MKDirections.Request()
        let source = MKPlacemark(coordinate: sourceCoordinate)
        let destination = MKPlacemark(coordinate: destinationCoordinate)
        request.source = MKMapItem(placemark: source)
        request.destination = MKMapItem(placemark: destination)
        request.transportType = MKDirectionsTransportType.automobile
        request.requestsAlternateRoutes = true
        let directions = MKDirections(request: request)
        directions.calculate { (response, _) in
            if let response = response, let route = response.routes.first {
                if resultsInMeters {
                    completion(String(format: "%.2f - %d", locale: Locale.current, route.distance, Int(route.expectedTravelTime)))
                } else {
                    completion(String(format: "%.2fkm - %dmin", locale: Locale.current, route.distance / 1000.0, Int(route.expectedTravelTime / 60.0)))
                }
            } else {
                completion("-")
            }
        }
        
    }
    
    public func generateQRCode(from string: String?) -> UIImage? {
        guard let string = string else { return nil }
        let data = string.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 15, y: 15)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return self.convert(output)
            }
        }
        return nil
    }
    
    public func formatPostalCode(postalCode: String) -> String {
        if postalCode.count == 4 && !postalCode.contains("-") {
            return "\(postalCode)-"
        } else if postalCode.count < 5 {
            return postalCode.replacingOccurrences(of: "-", with: "")
        } else if !postalCode.contains("-") {
            let count: Int = postalCode.count
            let firstFour: String = String(postalCode.prefix(4))
            let last: String = String(postalCode.suffix(count-4))
            return "\(firstFour)-\(last)"
        }
        return postalCode
    }
    
    public func callPhoneNumber(_ phoneNumber: String) {
        let callToNumber = phoneNumber.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !callToNumber.isEmpty, let url: URL = URL(string: "tel:\(callToNumber)"), UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    public func openEmail(_ email: String) {
        guard EVIOValidationManager.shared.isValid(email: email), let url: URL = URL(string: "mailto:\(email)"), UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
    public func openGoogleMap(charger: EVIOCharger) {
        guard let latitude = charger.geometry?.coordinates?.last, let longitude = charger.geometry?.coordinates?.first, let url = URL(string: "comgooglemaps-x-callback://?saddr=&daddr=\(latitude),\(longitude)&directionsmode=driving") else {return}
        UIApplication.shared.open(url, options: [:])
    }
    
    public func openAppleMaps(charger: EVIOCharger) {
        guard let latitude = charger.geometry?.coordinates?.last, let longitude = charger.geometry?.coordinates?.first, let url = URL(string: "http://maps.apple.com/?daddr=\(latitude),\(longitude)&dirflg=d") else {return}
        UIApplication.shared.open(url, options: [:])
    }
    
    public func openWaze(charger: EVIOCharger) {
        guard let latitude = charger.geometry?.coordinates?.last, let longitude = charger.geometry?.coordinates?.first, let url = URL(string: "https://waze.com/ul?ll=\(latitude),\(longitude)&navigate=yes") else {return}
        UIApplication.shared.open(url, options: [:])
    }
    
    public func openTomTom(charger: EVIOCharger) {
        guard let latitude = charger.geometry?.coordinates?.last, let longitude = charger.geometry?.coordinates?.first, let url = URL(string: "tomtomgo://x-callback-url/navigate?destination=\(latitude),\(longitude)") else {return}
        UIApplication.shared.open(url, options: [:])
    }
    
    public func getSymbol(forCurrencyCode code: String) -> String? {
        let locale = NSLocale(localeIdentifier: code.uppercased())
        return locale.displayName(forKey: NSLocale.Key.currencySymbol, value: code)
    }
    
    public func buttonTitleForRedirect(redirect: EVIOAlertRedirectType) -> String {
        let languageManager: EVIOLanguage = EVIOLanguageManager.shared.language
        switch redirect {
        case .billing:
            return languageManager.chargerDetailsGoToBillingProfile
        default:
            return languageManager.chargerDetailsGoToPaymentMethods
        }
    }
    
    public func convertTwoDigitYearToFourDigitYear(year: Int) -> Int {
        return year + .currentBaseYear
    }
    
    public func getValueForSliderBarSize(plug: EVIOPlug, ev: EVIOEv, maxPower: CGFloat, maxValue: CGFloat) -> CGFloat {
        let plugName = EVIOConnectorTypeHelper.shared.nameFor(plug: plug)
        if plugName == "CCS 1" || plugName == "CCS 2" || plugName == "CHAdeMO" {
            let timeInMinutes: CGFloat
            if ev.evInfo?.maxFastChargingPower ?? 0 > 0 {
                timeInMinutes = (maxPower >= (ev.evInfo?.maxFastChargingPower ?? 0) ? (ev.evInfo?.maxBatteryCapacity ?? 0) / (ev.evInfo?.maxFastChargingPower ?? 0) : (ev.evInfo?.maxBatteryCapacity ?? 0) / maxPower) * 60
                return maxValue * ((CGFloat(timeInMinutes) * 60.0) / 100.0)
            } else if ev.evInfo?.internalChargerPower ?? 0 > 0 {
                timeInMinutes = (maxPower >= (ev.evInfo?.internalChargerPower ?? 0) ? (ev.evInfo?.maxBatteryCapacity ?? 0) / (ev.evInfo?.internalChargerPower ?? 0) : (ev.evInfo?.maxBatteryCapacity ?? 0) / maxPower) * 60
                return maxValue * ((CGFloat(timeInMinutes) * 60.0) / 100.0)
            }
            return self.getDefaultSliderSizeValues(maxPower: maxPower, maxValue: maxValue)
        } else if ev.evInfo?.internalChargerPower ?? 0 > 0 {
            let timeInMinutes = (maxPower >= (ev.evInfo?.internalChargerPower ?? 0) ? (ev.evInfo?.maxBatteryCapacity ?? 0) / (ev.evInfo?.internalChargerPower ?? 0) : (ev.evInfo?.maxBatteryCapacity ?? 0) / maxPower) * 60
            return maxValue * ((CGFloat(timeInMinutes) * 60.0) / 100.0)
        } else {
            return self.getDefaultSliderSizeValues(maxPower: maxPower, maxValue: maxValue)
        }
    }
    
    public func saveDataToUserStorage(data: Data, filename: String, fileExtension: String, completion: @escaping (URL?) -> Void) {
        let temporaryFolder = FileManager.default.temporaryDirectory
        let fileName = "\(filename).\(fileExtension)"
        let temporaryFileURL = temporaryFolder.appendingPathComponent(fileName)
        do {
            try data.write(to: temporaryFileURL)
            completion(temporaryFileURL)
        } catch {
            completion(nil)
        }
    }
    
    private func getDefaultSliderSizeValues(maxPower: CGFloat, maxValue: CGFloat) -> CGFloat {
        switch maxPower {
        case 0.0...7.4:
            return maxValue * 864
        case 7.4...22:
            return maxValue * 432
        default:
            return maxValue * 216
        }
    }
    
    public func isPointInPolygon(topLeft: CLLocationCoordinate2D, bottomLeft: CLLocationCoordinate2D, bottomRight: CLLocationCoordinate2D, topRight: CLLocationCoordinate2D, vertices: EVIOMapCoordinateCorners) -> Bool {
        var intersectCount1 = 0
        var intersectCount2 = 0
        var intersectCount3 = 0
        var intersectCount4 = 0
        let listOfPoints = vertices.asList
        for j in 0...listOfPoints.count-1 {
            if self.rayCastIntersect(topLeft, listOfPoints[j], listOfPoints[min(j + 1, listOfPoints.count-1)]) {
                intersectCount1 += 1
            }
            if self.rayCastIntersect(bottomLeft, listOfPoints[j], listOfPoints[min(j + 1, listOfPoints.count-1)]) {
                intersectCount2 += 1
            }
            if self.rayCastIntersect(bottomRight, listOfPoints[j], listOfPoints[min(j + 1, listOfPoints.count-1)]) {
                intersectCount3 += 1
            }
            if self.rayCastIntersect(topRight, listOfPoints[j], listOfPoints[min(j + 1, listOfPoints.count-1)]) {
                intersectCount4 += 1
            }
        }
        // odd = inside, even = outside
        return intersectCount1 % 2 == 1 && intersectCount2 % 2 == 1 && intersectCount3 % 2 == 1 && intersectCount4 % 2 == 1
    }
    
    public func sanitizedNumericStringForString(text: String) -> String {
        let unsafeChars = CharacterSet.alphanumerics.inverted
        return text.components(separatedBy: unsafeChars).joined(separator: "")
    }
    
    public func formatCreditCardString(cardNumber: String, length: Int = 4) -> String {
        guard cardNumber.count > length else {return cardNumber}
        let arrOfCharacters: [String] = cardNumber.map({"\($0)"})
        var formattedString = ""
        for i in 0...arrOfCharacters.count-1 {
            formattedString.append(arrOfCharacters[i])
            if((i+1) % 4 == 0 && i+1 != arrOfCharacters.count){
                formattedString.append("-")
            }
        }
        return formattedString.isEmpty ? cardNumber : formattedString
    }
    
    private func convert(_ cmage: CIImage) -> UIImage? {
        let context: CIContext = CIContext(options: nil)
        guard let cgImage: CGImage = context.createCGImage(cmage, from: cmage.extent) else { return nil }
        let image: UIImage = UIImage(cgImage: cgImage)
        return image
    }
    
    private func rayCastIntersect(_ tap: CLLocationCoordinate2D, _ vertA: CLLocationCoordinate2D, _ vertB: CLLocationCoordinate2D) -> Bool {
        let aY = vertA.latitude
        let bY = vertB.latitude
        let aX = vertA.longitude
        let bX = vertB.longitude
        let pY = tap.latitude
        let pX = tap.longitude
        if (aY > pY && bY > pY) || (aY < pY && bY < pY) || (aX < pX && bX < pX) {
            // a and b can't both be above or below pt.y, and a or
            // b must be east of pt.x
            return false
        }
        return true
    }
    
}
