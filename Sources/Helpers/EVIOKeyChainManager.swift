//
//  EVIOKeyChainManager.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 18/12/2021.
//

import Foundation
import Security

/// # STRUCT THAT ACTS AS AN WRAPPER FOR THE iOS KEYCHAIN
/// # THAT ALLOWS TO SAVE, UPDATE, DELETE AND READ DATA IN THE KEYCHAIN
public struct EVIOKeyChainManager {
    
    // MARK: - STATIC PROPERTIES
    public static var shared: EVIOKeyChainManager = EVIOKeyChainManager()
    
    // MARK: - PROPERTIES
    // the user's session token to be able to make API requests
    public var userSessionToken: String?
    // the user's refresh token also needed to be able to make API requests
    public var userRefreshToken: String?
    
    // MARK: - INIT
    public init() {
        // we make sure we have a bundle identifier if not we return from the function
        guard let identifier = Bundle.main.bundleIdentifier else { return }
        do {
            // we try to get the token data from the device's keychain
            let tokenData: Data = try self.readData(service: identifier, key: .sessionToken)
            // we then try to create a string with the token data that represents the user's session token
            self.userSessionToken = String(data: tokenData, encoding: .utf8)
            // we then try to get the refresh token data from the device's keychain
            let refreshTokenData = try self.readData(service: identifier, key: .refreshToken)
            // we then try to create a string with the refresh token data
            self.userRefreshToken = String(data: refreshTokenData, encoding: .utf8)
        } catch {
            // if anything fails we print the error's localized description
            print(error.localizedDescription)
        }
    }
    
    // MARK: - PUBLIC METHODS
    /// # METHOD THAT SAVES A PIECE OF DATA IN THE DEVICE'S KEYCHAIN
    /// - Parameters:
    ///   - data: the data to be saved
    ///   - service: the service that this data belongs to (ex: app's bundle indentifier)
    ///   - key: the key that identifies the data
    public func save(data: Data, service: String, key: String) throws {

        let query: [String: AnyObject] = [
            // kSecAttrService,  kSecAttrAccount, and kSecClass
            // uniquely identify the item to save in Keychain
            kSecAttrService as String: service as AnyObject,
            kSecAttrAccount as String: key as AnyObject,
            kSecClass as String: kSecClassGenericPassword,
            
            // kSecValueData is the item value to save
            kSecValueData as String: data as AnyObject
        ]
        
        // SecItemAdd attempts to add the item identified by
        // the query to keychain
        let status = SecItemAdd(
            query as CFDictionary,
            nil
        )

        // errSecDuplicateItem is a special case where the
        // item identified by the query already exists. Throw
        // duplicateItem so the client can determine whether
        // or not to handle this as an error
        if status == errSecDuplicateItem {
            throw EVIOError.duplicateItem
        }

        // Any status other than errSecSuccess indicates the
        // save operation failed.
        guard status == errSecSuccess else {
            throw EVIOError.unexpectedStatus(status)
        }
    }
    
    /// # METHOD THAT UPDATES AN EXISTING PIECE OF DATA IN THE DEVICE'S KEYCHAIN
    /// - Parameters:
    ///   - data: the data to be updated
    ///   - service: the service that this data belongs to (ex: app's bundle indentifier)
    ///   - key: the key that identifies the data
    public func update(data: Data, service: String, key: String) throws {
        let query: [String: AnyObject] = [
            // kSecAttrService,  kSecAttrAccount, and kSecClass
            // uniquely identify the item to update in Keychain
            kSecAttrService as String: service as AnyObject,
            kSecAttrAccount as String: key as AnyObject,
            kSecClass as String: kSecClassGenericPassword
        ]
        
        // attributes is passed to SecItemUpdate with
        // kSecValueData as the updated item value
        let attributes: [String: AnyObject] = [
            kSecValueData as String: data as AnyObject
        ]
        
        // SecItemUpdate attempts to update the item identified
        // by query, overriding the previous value
        let status = SecItemUpdate(
            query as CFDictionary,
            attributes as CFDictionary
        )

        // errSecItemNotFound is a special status indicating the
        // item to update does not exist. Throw itemNotFound so
        // the client can determine whether or not to handle
        // this as an error
        guard status != errSecItemNotFound else {
            throw EVIOError.itemNotFound
        }

        // Any status other than errSecSuccess indicates the
        // update operation failed.
        guard status == errSecSuccess else {
            throw EVIOError.unexpectedStatus(status)
        }
    }
    
    /// # METHOD THAT READS A PIECE OF DATA FROM THE DEVICE'S KEYCHAIN
    /// - Parameters:
    ///   - service: the service that this data belongs to (ex: app's bundle indentifier)
    ///   - key: the key that identifies the data
    public func readData(service: String, key: String) throws -> Data {
        let query: [String: AnyObject] = [
            // kSecAttrService,  kSecAttrAccount, and kSecClass
            // uniquely identify the item to read in Keychain
            kSecAttrService as String: service as AnyObject,
            kSecAttrAccount as String: key as AnyObject,
            kSecClass as String: kSecClassGenericPassword,
            
            // kSecMatchLimitOne indicates keychain should read
            // only the most recent item matching this query
            kSecMatchLimit as String: kSecMatchLimitOne,

            // kSecReturnData is set to kCFBooleanTrue in order
            // to retrieve the data for the item
            kSecReturnData as String: kCFBooleanTrue
        ]

        // SecItemCopyMatching will attempt to copy the item
        // identified by query to the reference itemCopy
        var itemCopy: AnyObject?
        let status = SecItemCopyMatching(
            query as CFDictionary,
            &itemCopy
        )

        // errSecItemNotFound is a special status indicating the
        // read item does not exist. Throw itemNotFound so the
        // client can determine whether or not to handle
        // this case
        guard status != errSecItemNotFound else {
            throw EVIOError.itemNotFound
        }
        
        // Any status other than errSecSuccess indicates the
        // read operation failed.
        guard status == errSecSuccess else {
            throw EVIOError.unexpectedStatus(status)
        }

        // This implementation of KeychainInterface requires all
        // items to be saved and read as Data. Otherwise,
        // invalidItemFormat is thrown
        guard let data = itemCopy as? Data else {
            throw EVIOError.invalidItemFormat
        }

        return data
    }
    
    /// # METHOD THAT DELETES A PIECE OF DATA FROM THE DEVICE'S KEYCHAIN
    /// - Parameters:
    ///   - service: the service that this data belongs to (ex: app's bundle indentifier)
    ///   - key: the key that identifies the data
    public func deleteData(service: String, key: String) throws {
        let query: [String: AnyObject] = [
            // kSecAttrService,  kSecAttrAccount, and kSecClass
            // uniquely identify the item to delete in Keychain
            kSecAttrService as String: service as AnyObject,
            kSecAttrAccount as String: key as AnyObject,
            kSecClass as String: kSecClassGenericPassword
        ]

        // SecItemDelete attempts to perform a delete operation
        // for the item identified by query. The status indicates
        // if the operation succeeded or failed.
        let status = SecItemDelete(query as CFDictionary)

        // Any status other than errSecSuccess indicates the
        // delete operation failed.
        guard status == errSecSuccess else {
            throw EVIOError.unexpectedStatus(status)
        }
    }
    
}
