//
//  EVIOStorageManager.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 23/11/2021.
//

import Foundation
import WLModels

/// # SINGLETON CLASS TO PERFORM `CRUD` OPERATIONS
/// # ON USER DEFAULTS
public final class EVIOStorageManager {
    
    // MARK: - STATIC PROPERTIES
    public static let shared = EVIOStorageManager()
    
    // MARK: - PRIVATE PROPERTIES
    private let defaults: UserDefaults = UserDefaults.standard
    private var keychain: EVIOKeyChainManager = EVIOKeyChainManager.shared
    private let decoder: JSONDecoder = JSONDecoder()
    private let encoder: JSONEncoder = JSONEncoder()
    
    // MARK: - SAVING
    
    /// # METHOD TO SAVE THE USER'S SESSION TOKEN ONCE IT'S RECEIVED FROM THE WEB SERVICE
    /// - Parameter token: user's token to be saved
    public func saveUserSessionToken(token: String?) {
        guard let token = token, let identifier = Bundle.main.bundleIdentifier, let data: Data = token.data(using: .utf8) else { return }
        do {
            try self.keychain.save(data: data, service: identifier, key: .sessionToken)
            self.keychain.userSessionToken = token
        } catch {
            print(error.localizedDescription)
        }
    }
    
    /// # METHOD TO SAVE THE USER'S REFRESH TOKEN ONCE IT'S RECEIVED FROM THE WEB SERVICE
    /// - Parameter refreshToken: user's refresh token to be saved
    public func saveUserRefreshToken(refreshToken: String?) {
        guard let refreshToken = refreshToken, let identifier = Bundle.main.bundleIdentifier, let data: Data = refreshToken.data(using: .utf8) else { return }
        do {
            try self.keychain.save(data: data, service: identifier, key: .refreshToken)
            self.keychain.userRefreshToken = refreshToken
        } catch {
            print(error.localizedDescription)
        }
    }
    
    /// # METHOD TO SAVE THE USER'S FAVORITE CHARGERS
    /// This method takes an `array` of objects that conform to the ``EVIOChargerProtocol`` protocol
    /// because there are two models than can be sent from the web service as favorites
    /// and they share a common property that is `hwId` and so it can take both models and
    /// store them in the user defaults.
    /// - Parameter favs: user's favorites to be saved
    public func saveUserFavorites(favs: [EVIOChargerProtocol]?) {
        // Makes sure the favs array is not empty
        if let first = favs?.first {
            // Checks if the first element of the array is of type EVIOFavorite
            if first is EVIOFavorite {
                /* If so then tries to encode it, if success stores de value inside the user defaults
                    otherwise returns from the method without executing anything else
                */
                guard let data: Data = try? self.encoder.encode(favs as? [EVIOFavorite]) else {return}
                self.defaults.setValue(data, forKey: .userFavorites)
            } else {
                /* If not then tries to encode it as an object of type EVIOCharger, if success stores de value inside the user defaults
                    otherwise returns from the method without executing anything else
                */
                guard let data: Data = try? self.encoder.encode(favs as? [EVIOCharger]) else {return}
                self.defaults.setValue(data, forKey: .userFavorites)
            }
        } else {
            self.defaults.setValue(nil, forKey: .userFavorites)
        }
    }
    
    /// # METHOD TO SAVE THE USER'S CONTRACTS
    /// - Parameter contracts: user's contracts to be saved
    public func saveUserContracts(contracts: [EVIOContract]?) {
        guard let contracts = contracts, !contracts.isEmpty, let data: Data = try? self.encoder.encode(contracts) else { return }
        self.defaults.setValue(data, forKey: .userContracts)
    }
    
    /// # METHOD TO SAVE THE USER EV'S
    /// - Parameter evs: user's evs to be saved
    public func saveUserEVs(evs: [EVIOEv]?) {
        guard let evs = evs, let data: Data = try? self.encoder.encode(evs) else { return }
        self.defaults.setValue(data, forKey: .userEvs)
    }
    
    /// # METHOD TO SAVE USER'S PROFILE
    /// - Parameter user: the user's profile to be saved
    public func saveUserProfile(user: EVIOUser?) {
        guard let user = user, let data: Data = try? self.encoder.encode(user) else { return }
        self.defaults.set(data, forKey: .userProfile)
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: .landingPageDownloaded, object: nil)
        }
    }
    
    /// # METHOD TO SAVE THE APP'S TRANSLATION HASH
    /// - Parameter hash: the hash to be saved
    public func saveTranslationHash(hash: String?) {
        guard let hash = hash else { return }
        self.defaults.set(hash, forKey: .translationHash)
    }
    
    /// # METHOD TO SAVE THE APP'S TRANSLATION OBJECT
    /// - Parameter translation: the translation to be saved
    public func saveAppTranslation(translation: EVIOTranslation?) {
        guard let translation = translation else { return }
        self.defaults.set(translation.asDictionary, forKey: .appTranslation)
    }
    
    /// # METHOD TO SAVE THE EVIO'S DEFAULT CEME
    /// - Parameter ceme: the default ceme to be saved
    public func saveEVIODefaultCemeTariff(ceme: EVIOCeme?) {
        guard let ceme = ceme, let data: Data = try? self.encoder.encode(ceme) else { return }
        self.defaults.set(data, forKey: .defaultCeme)
    }
    
    /// # METHOD TO SAVE THE USER'S CEME TARIFFS
    /// - Parameter tariffs: the user's ceme tariffs to be saved
    public func saveUserCemeTariff(tariffs: [EVIOCemeTariff]?) {
        guard let tariffs = tariffs, !tariffs.isEmpty, let data: Data = try? self.encoder.encode(tariffs) else { return }
        self.defaults.set(data, forKey: .userCemesTariffs)
    }
    
    /// # METHOD TO SAVE THE USER'S WALLET
    /// - Parameter wallet: the user's wallet to be saved
    public func saveUserWallet(wallet: EVIOWallet?) {
        guard let wallet = wallet, let data: Data = try? self.encoder.encode(wallet) else { return }
        self.defaults.set(data, forKey: .userWallet)
    }
    
    /// # METHOD TO SAVE THE CURRENT TESLA TARIFF
    /// - Parameter teslaTariff: the current tesla tariff to be saved
    public func saveCurrentTeslaTariff(teslaTariff: EVIOTariffTesla?) {
        guard let teslaTariff = teslaTariff, let data: Data = try? self.encoder.encode(teslaTariff) else { return }
        self.defaults.set(data, forKey: .teslaTariff)
    }
    
    /// # METHOD TO SAVE THE USER'S REFERENCE PLACES
    /// - Parameter refPlaces: the reference places to be saved
    public func saveUserReferencePlaces(refPlaces: [EVIOReferencePlace]?) {
        guard let refPlaces = refPlaces, let data: Data = try? self.encoder.encode(refPlaces) else { return }
        self.defaults.set(data, forKey: .referencePlaces)
    }
    
    /// # METHOD TO SAVE THE USER'S SEARCHES
    /// - Parameter searchLocations: the user's searches to be saved
    public func saveUserSearchLocations(searchLocations: [EVIOSearchLocation]?) {
        guard let searchLocations = searchLocations, let data: Data = try? self.encoder.encode(searchLocations) else { return }
        if searchLocations.isEmpty {
            self.defaults.set(nil, forKey: .userSearchLocations)
            return
        }
        self.defaults.set(data, forKey: .userSearchLocations)
    }
    
    /// # SAVES THE USER'S MAP FILTER
    /// - Parameter filter: the map filter to be saved
    public func saveMapFilter(filter: EVIOMapFilter?) {
        guard let filter = filter, let data: Data = try? self.encoder.encode(filter) else { return }
        self.defaults.set(data, forKey: .userFilter)
    }
    
    /// # SAVES THE USER'S ACTIVATION OBJECT
    /// - Parameter activation: the activation object to be saved
    public func saveUserActivation(activation: EVIOActivation?) {
        guard let activation = activation, let data: Data = try? self.encoder.encode(activation) else {
            self.defaults.set(nil, forKey: .userActivation)
            return
        }
        self.defaults.set(data, forKey: .userActivation)
    }
    
    /// # SAVES THE LAST PHONE NUMBER AND INTERNATIONAL PREFIX USED TO LOGIN
    /// - Parameters:
    ///   - phoneCode: the international prefix to be saved
    ///   - phoneNumber: the phone number to be saved
    public func saveLastLoggedInNumber(phoneCode: String?, phoneNumber: String?) {
        self.defaults.set(phoneCode, forKey: .lastUserPhoneCodeUsed)
        self.defaults.set(phoneNumber, forKey: .lastUserPhoneUsed)
    }
    
    /// # SAVES THE LAST EMAIL USED TO LOGIN
    /// - Parameter email: the email to be saved
    public func saveLastLoggedInEmail(email: String?) {
        self.defaults.set(email, forKey: .lastUserEmailUsed)
    }
    
    /// # SAVES A VALUE TELLING WHETHER THE APP WAS INSTALLED / REINSTALLED
    /// - Parameter value: the value to be saved
    public func saveAppWasReinstalled(value: Bool) {
        return self.defaults.set(value ? "true" : "false", forKey: .appWasReinstalled)
    }
    
    public func saveChargingSessionDataUpdateNotificationValue(_ value: Bool) {
        self.defaults.set(value, forKey: .chargingSessionDataUpdateNotification)
    }
    
    public func saveFirebaseToken(value: String?) {
        self.defaults.set(value, forKey: .firebaseToken)
    }
    
    // MARK: - RETRIEVING
    
    /// # METHOD TO RETRIEVE THE USER'S SESSION TOKEN
    /// - Returns: a string representing the user's token or nil if none can be found
    public func getUserSessionToken() -> String? {
        return self.keychain.userSessionToken
    }
    
    /// # METHOD TO RETRIEVE THE USER'S REFRESH TOKEN
    /// - Returns: a string representing the user's refresh token or nil if none can be found
    public func getUserRefreshToken() -> String? {
        return self.keychain.userRefreshToken
    }
    
    /// # METHOD TO RETRIEVE THE USER'S FAVORITES
    /// The process of retriving the user's favorites will always return an array of objects of type ``EVIOCharger``
    /// despite the fact that when saving them using the function ``saveUserFavorites(...)`` it accepts both objects (``EVIOFavorite``, ``EVIOCharger``)
    /// Only the property `hwId` will be used to check whether a charger is a favorite or not and both objects have that property since they conform to the protocol ``EVIOChargerProtocol``
    /// - Returns: an array of objects of type ``EVIOCharger`` representing the user's favorites or nil if none can be found or an error occurs while trying to decode it
    public func getUserFavorites() -> [EVIOCharger]? {
        guard let data: Data = self.defaults.data(forKey: .userFavorites), let favs: [EVIOCharger] = try? self.decoder.decode([EVIOCharger].self, from: data) else { return nil }
        return favs
    }
    
    /// # METHOD TO RETRIEVE THE USER'S CONTRACTS
    /// - Returns: an array of objects of type ``EVIOContract`` or nil if none can be found or an error occurs while trying to decode it
    public func getUserContracts() -> [EVIOContract]? {
        guard let data: Data = self.defaults.data(forKey: .userContracts), let contracts: [EVIOContract] = try? self.decoder.decode([EVIOContract].self, from: data) else { return nil }
        return contracts
    }
    
    /// # METHOD TO RETRIEVE THE USER'S EV's
    /// - Returns: an array of objects of type ``EVIOEv`` or nil if none can be found or an error occurs while trying to decode it
    public func getUserEvs() -> [EVIOEv]? {
        guard let data: Data = self.defaults.data(forKey: .userEvs), let evs: [EVIOEv] = try? self.decoder.decode([EVIOEv].self, from: data) else { return nil }
        return evs
    }
    
    /// # METHOD TO RETRIEVE USER'S PROFILE
    /// - Returns: an object of type ``EVIOUser`` representing the user's profile or nil if none can be found or an error occurs while trying to decode it
    public func getUserProfile() -> EVIOUser? {
        guard let data: Data = self.defaults.data(forKey: .userProfile), let user: EVIOUser = try? self.decoder.decode(EVIOUser.self, from: data) else { return nil }
        return user
    }
    
    /// # METHOD TO RETRIEVE THE APP'S TRANSLATION HASH
    /// - Returns: a string representing the app's translation hash or nin if none can be found
    public func getTranslationHash() -> String? {
        return self.defaults.string(forKey: .translationHash)
    }
    
    /// # METHOD TO RETRIEVE THE APP'S TRANSLATION DICTIONARY
    /// - Returns: a dictionary representing the app's translation or an empty dictionary if none can be found
    public func getAppTranslation() -> [String: String] {
        return self.defaults.dictionary(forKey: .appTranslation) as? [String: String] ?? [:]
    }
    
    /// # METHOD TO RETRIEVE THE EVIO'S DEFAULT CEME
    /// - Returns: an object of type ``EVIOCeme`` representing the evio's default ceme or nil in case none is found or an error occurs while trying to decode it
    public func getDefaulEvioCemeTariff() -> EVIOCeme? {
        guard let data: Data = self.defaults.data(forKey: .defaultCeme), let defaultCeme: EVIOCeme = try? self.decoder.decode(EVIOCeme.self, from: data) else { return nil }
        return defaultCeme
    }
    
    /// # METHOD TO RETRIEVE THE USER'S CEME TARIFFS
    /// - Returns: an array of objcts of type ``EVIOCemeTariff`` representing the user's ceme tariffs or nil in case none is found or an error occurs while trying to decode it
    public func getUserCemeTariffs() -> [EVIOCemeTariff]? {
        guard let data: Data = self.defaults.data(forKey: .userCemesTariffs), let cemeTariffs: [EVIOCemeTariff] = try? self.decoder.decode([EVIOCemeTariff].self, from: data) else { return nil }
        return cemeTariffs
    }
    
    /// # METHOD TO RETRIEVE THE USER'S WALLET
    /// - Returns: an object of type ``EVIOWallet`` representing the user's wallet or nil in case none can be found
    public func getUserWallet() -> EVIOWallet? {
        guard let data: Data = self.defaults.data(forKey: .userWallet), let wallet: EVIOWallet = try? self.decoder.decode(EVIOWallet.self, from: data) else { return nil }
        return wallet
    }
    
    /// # METHOD TO RETRIEVE THE CURRENT TESLA TARIFF
    /// - Returns: an object of type ``EVIOTariffTesla`` representing the current tesla tariff or nil if none can be found
    public func getCurrentTeslaTariff() -> EVIOTariffTesla? {
        guard let data: Data = self.defaults.data(forKey: .teslaTariff), let teslaTariff: EVIOTariffTesla = try? self.decoder.decode(EVIOTariffTesla.self, from: data) else { return nil }
        return teslaTariff
    }
    
    /// # METHOD TO RETRIEVE THE USER'S REFERENCE PLACES
    /// - Returns: an array of objects of type ``EVIOReferencePlace`` representing the user's reference places or an empty one if none can be found
    public func getUserReferencePlaces() -> [EVIOReferencePlace] {
        guard let data: Data = self.defaults.data(forKey: .referencePlaces), let refPlaces: [EVIOReferencePlace] = try? self.decoder.decode([EVIOReferencePlace].self, from: data) else { return [] }
        return refPlaces
    }
    
    /// # METHOD TO RETRIEVE THE USER'S RECENT SEARCHES
    /// - Returns: an array of object of type ``EVIOSearchLocation`` representing the user's searches or an empty one if none can be found
    public func getSearchLocations() -> [EVIOSearchLocation] {
        guard let data: Data = self.defaults.data(forKey: .userSearchLocations), let searches: [EVIOSearchLocation] = try? self.decoder.decode([EVIOSearchLocation].self, from: data) else { return [] }
        return searches
    }
    
    /// # METHOD TO RETRIEVE USER'S MAP FILTER
    /// - Returns: an object of type ``EVIOMapFilter`` that represents the user's map filter or nil if none can be found
    public func getUserFilter() -> EVIOMapFilter? {
        guard let data: Data = self.defaults.data(forKey: .userFilter), let filter: EVIOMapFilter = try? self.decoder.decode(EVIOMapFilter.self, from: data) else { return nil }
        return filter
    }
    
    /// # METHOD TO RETRIEVE USER'S ACTIVATION INFO
    /// - Returns: an object of type ``EVIOActivation`` that represents the user's activation information or nil if none can be found
    public func getUserActivation() -> EVIOActivation? {
        guard let data: Data = self.defaults.data(forKey: .userActivation), let activation: EVIOActivation = try? self.decoder.decode(EVIOActivation.self, from: data) else { return nil }
        return activation
    }
    
    /// # METHOD THAT RETRIEVES THE LAST USED PHONE NUMBER AND INTERNATIONAL PREFIX USED TO LOGIN
    /// - Returns: a tuple with an international prefix and phone number representing the last ones used to login or nil if none can be found
    public func getLastPhoneNumberAndInternationalPrefix() -> (code: String?, number: String?) {
        let phoneCode: String? = self.defaults.string(forKey: .lastUserPhoneCodeUsed)
        let phoneNumber: String? = self.defaults.string(forKey: .lastUserPhoneUsed)
        return (phoneCode, phoneNumber)
    }
    
    /// # METHOD THAT RETRIEVES THE LAST EMAIL ADDRESS USED TO LOGIN
    /// - Returns: a string reprenting the last used email or nil if none can be found
    public func getLastEmailUsedToLogin() -> String? {
        return self.defaults.string(forKey: .lastUserEmailUsed)
    }
    
    /// # METHOD THAT RETRIEVES THE VALUE THAT INDICATES WHETHER THE APP WAS INSTALLED REINSTALLED
    /// - Returns: the value that represents if the app was installed / reinstalled. Defaults to true
    public func getAppWasReinstalled() -> Bool {
        guard let value: String = self.defaults.string(forKey: .appWasReinstalled), let result: Bool = Bool(value) else { return true}
        return result
    }
    
    public func getFirebaseToken() -> String? {
        return self.defaults.string(forKey: .firebaseToken)
    }
    
    // MARK: - DELETING
    /// # METHOD THAT DELETES ALL USER DATA FROM THE USER DEFAULTS (DEVICE STORAGE)
    public func deleteAllUserData() {
        self.deleteUserTokenAndRefreshToken()
        self.defaults.set(nil, forKey: .userFavorites)
        self.defaults.set(nil, forKey: .userContracts)
        self.defaults.set(nil, forKey: .userEvs)
        self.defaults.set(nil, forKey: .userProfile)
        self.defaults.set(nil, forKey: .userCemesTariffs)
        self.defaults.set(nil, forKey: .userWallet)
        self.defaults.set(nil, forKey: .referencePlaces)
        self.defaults.set(nil, forKey: .userSearchLocations)
        self.defaults.set(nil, forKey: .userFilter)
        self.defaults.set(nil, forKey: .userActivation)
        self.defaults.set(nil, forKey: .firebaseToken)
    }
    
    /// # METHOD THAT DELETES THE USER AUTHENTICATION DATA
    public func deleteUserTokenAndRefreshToken() {
        do {
            guard let identifier = Bundle.main.bundleIdentifier else { return }
            try self.keychain.deleteData(service: identifier, key: .sessionToken)
            try self.keychain.deleteData(service: identifier, key: .refreshToken)
            self.keychain.userSessionToken = nil
            self.keychain.userRefreshToken = nil
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
