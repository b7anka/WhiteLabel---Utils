//
//  EVIOAppPermissionManager.swift
//  EVIO - WhiteLabel
//
//  Created by João Moreira on 21/06/2021.
//

import AVFoundation
import Photos
import UserNotifications
import SwiftLocation
import WLModels

/// # STRUCT THAT HANDLES ALL PERMISSIONS NECESSARY FOR THE APP'S PROPER FUNCTION
public struct EVIOAppPermissionManager {
    
    // MARK: - STATIC PUBLIC PROPERTIES
    // the shared instance of this struct
    public static let shared: EVIOAppPermissionManager = EVIOAppPermissionManager()
    
    // MARK: - PUBLIC METHODS
    /// # CHECKS WHETHER THE USER HAS GIVEN ACCESS TO THE DEVICE'S CAMERA
    /// - Returns: an object of type ``EVIOAppPermission`` that represents the state of the permission
    public func checkForCameraPermission() -> EVIOAppPermission {
        // we ask the av capture device for the status of the camera's video usage
        switch AVCaptureDevice.authorizationStatus(for: .video) {
            // if denied or restricted
        case .denied, .restricted:
            // we return the denied enum value
            return .denied
            // if authorized
        case .authorized:
            // we return the authorized enum value
            return .authorized
            // all other cases
        default:
            // we return the askForIt enum value
            return .askForIt
        }
    }
    
    /// # ASKS THE USER FOR PERMISSION TO USE THE DEVICE'S CAMERA
    /// - Parameter completion: the callback to be executed once user has responded that will receive an object of type ``EVIOAppPermission`` as a parameter that represents the state of the permission
    public func askForCameraPermission(completion: @escaping (EVIOAppPermission) -> Void) {
        // we execute the request in the main thread
        DispatchQueue.main.async {
            // we ask the av capture device class to request access to use video (video includes photos too, we need video to be able to read QR codes) from the camera to the user
            AVCaptureDevice.requestAccess(for: .video) { result in
                // if result is true
                if result {
                    // user has given permission so we execute the callback with the authorized enum value
                    completion(.authorized)
                } else {
                    // else user has denied permission and we execute the callback with the denied enum value
                    completion(.denied)
                }
            }
        }
    }
    
    /// # CHECKS WHETHER THE USER HAS GIVEN ACCESS TO THE DEVICE'S PHOTO LIBRARY (READ WRITE)
    /// - Returns: an object of type ``EVIOAppPermission`` that represents the state of the permission
    public func checkForPhotoLibraryPermission() -> EVIOAppPermission {
        // we switch the authorization status of the read and write permission from the ph photo library class
        switch PHPhotoLibrary.authorizationStatus(for: PHAccessLevel.readWrite) {
            // if denied or restricted
        case .denied, .restricted:
            // we return the denied enum value
            return .denied
            // if authorized or limited
        case .authorized, .limited:
            // we return the authorized enum value
            return .authorized
            // all other cases
        default:
            // we return the askForIt enum value
            return .askForIt
        }
    }
    
    /// # CHECKS WHETHER THE USER HAS GIVEN ACCESS TO THE DEVICE'S PHOTO LIBRARY (READ WRITE)
    /// - Returns: an object of type ``EVIOAppPermission`` that represents the state of the permission
    public func checkForPhotoAddLibraryPermission() -> EVIOAppPermission {
        // we switch the authorization status of the read and write permission from the ph photo library class
        switch PHPhotoLibrary.authorizationStatus(for: PHAccessLevel.addOnly) {
            // if denied or restricted
        case .denied, .restricted:
            // we return the denied enum value
            return .denied
            // if authorized or limited
        case .authorized, .limited:
            // we return the authorized enum value
            return .authorized
            // all other cases
        default:
            // we return the askForIt enum value
            return .askForIt
        }
    }
    
    /// # ASKS THE USER FOR PERMISSION TO USE THE DEVICE'S PHOTO LIBRARY
    /// - Parameter completion: the callback to be executed once user has responded that will receive an object of type ``EVIOAppPermission`` as a parameter that represents the state of the permission
    public func askForPhotoLibraryPermission(completion: @escaping (EVIOAppPermission) -> Void) {
        // we ask the ph photo library class to request permission of read and write to the user
        PHPhotoLibrary.requestAuthorization(for: .readWrite) { (permission) in
            // we execute the callback in the main thread
            DispatchQueue.main.async {
                // we switch the permission
                switch permission {
                    // case denied or restricted
                case .denied, .restricted:
                    // we execute the callback with the denied enum value
                    completion(.denied)
                    // authorized or limited
                case .authorized, .limited:
                    // we execute the callback with the authorized enum value
                    completion(.authorized)
                    // all other cases
                default:
                    // we execute the callback with the askForIt enum value
                    completion(.askForIt)
                }
            }
        }
    }
    
    /// # ASKS THE USER FOR PERMISSION TO USE THE DEVICE'S PHOTO LIBRARY
    /// - Parameter completion: the callback to be executed once user has responded that will receive an object of type ``EVIOAppPermission`` as a parameter that represents the state of the permission
    public func askForPhotoAddLibraryPermission(completion: @escaping (EVIOAppPermission) -> Void) {
        // we ask the ph photo library class to request permission of read and write to the user
        PHPhotoLibrary.requestAuthorization(for: .addOnly) { (permission) in
            // we execute the callback in the main thread
            DispatchQueue.main.async {
                // we switch the permission
                switch permission {
                    // case denied or restricted
                case .denied, .restricted:
                    // we execute the callback with the denied enum value
                    completion(.denied)
                    // authorized or limited
                case .authorized, .limited:
                    // we execute the callback with the authorized enum value
                    completion(.authorized)
                    // all other cases
                default:
                    // we execute the callback with the askForIt enum value
                    completion(.askForIt)
                }
            }
        }
    }
    
    /// # CHECKS WHTHER THE USER HAS GIVEN PERMISSION FOR THE APP TO POST NOTIFICATIONS
    /// - Parameter completion: the callback to be executed once user has responded that will receive an object of type ``EVIOAppPermission`` as a parameter that represents the state of the permission
    public func checkForNotificationsPermission(completion: @escaping (EVIOAppPermission) -> Void) {
        // asks the notification center to get the notifications settings object
        UNUserNotificationCenter.current().getNotificationSettings(completionHandler: { settings in
            DispatchQueue.main.async {
                // thjen we switch the settings' authorization status
                switch settings.authorizationStatus {
                    // if denied, ephemeral or provisionl
                case .denied, .ephemeral, .provisional :
                    // we execute the callback with the denied enum value
                    completion(.denied)
                    // if authorized
                case .authorized:
                    // we execute the callback with the authorized enum value
                    completion(.authorized)
                    // all other cases
                default:
                    // we execute the callback with the askForIt enum value
                    completion(.askForIt)
                }
            }
        })
    }
    
    /// # ASKS THE USER FOR PERMISSION TO POST NOTIFICATIONS
    /// - Parameter completion: the callback to be executed once user has responded that will receive an object of type ``EVIOAppPermission`` as a parameter that represents the state of the permission
    public func askForNotificationsPermission(completion: @escaping (EVIOAppPermission) -> Void) {
        // asks the notification center to request authorization to show notifications of type alert
        UNUserNotificationCenter.current().requestAuthorization(options: .alert) { result, error in
            // executes the result in the main thread
            DispatchQueue.main.async {
                // if there is an error
                if error != nil {
                    // than we execute the callback with the denied enum value
                    completion(.denied)
                } else {
                    // else if result is true
                    if result {
                        // user has given permission so we can execute the callback with the authorized enum value
                        completion(.authorized)
                    } else {
                        // user has denied permission so we can execute the callback with the denied enum value
                        completion(.denied)
                    }
                }
            }
        }
    }
    
    /// # CHECKS WHETHER THE USER HAS GIVEN ACCESS TO THE DEVICE'S LOCATION
    /// - Returns: an object of type ``EVIOAppPermission`` that represents the state of the permission
    public func checkLocationPermission() -> EVIOAppPermission {
        // we switch the authorization status from the Swift Location library
        switch SwiftLocation.authorizationStatus {
            // if authorized always or authorized when in use
        case .authorizedAlways, .authorizedWhenInUse:
            // we return the authorized enum value
            return .authorized
            // if denied or restricted
        case .denied, .restricted:
            // we return the denied enum value
            return .denied
            // all other cases
        default:
            // we return the askForIt enum value
            return .askForIt
        }
    }
    
    /// # ASKS THE USER FOR PERMISSION TO ACCESS DEVICE'S LOCATION
    /// - Parameter completion: the callback to be executed once user has responded that will receive an object of type ``EVIOAppPermission`` as a parameter that represents the state of the permission
    public func askForLocationPermission(completion: @escaping (EVIOAppPermission) -> Void) {
        // we ask the Swift Location library to request authorization to the user
        SwiftLocation.requestAuthorization { permission in
            // we executed the response in the main thread
            DispatchQueue.main.async {
                // we switch the permission
                switch permission {
                    // if authorized always or authorized when in user
                case .authorizedAlways, .authorizedWhenInUse:
                    // we execute the callback with the authorized enum value
                    completion(.authorized)
                    // if denied or restricted
                case .denied, .restricted:
                    // we execute the callback with the denied enum value
                    completion(.denied)
                    // all other cases
                default:
                    // we execute the callback with the askForIt enum value
                    completion(.askForIt)
                }
            }
        }
    }
    
}
