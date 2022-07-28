//
//  DeviceKit+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 09/12/2021.
//

import Foundation
import DeviceKit

/// # EXTENSION THAT ADDS CUSTOM PROPERTIES AND METHODS TO THE DEVICE'S KIT DEVICE ENUM
public extension Device {
    
    // holds all iPhone models with a notch
    private static let DEVICES_WITH_NOTCH: [Device] = [.iPhoneX, .simulator(.iPhoneX), .iPhoneXS, .simulator(.iPhoneXS), .iPhoneXSMax, .simulator(.iPhoneXSMax), .iPhoneXR, .simulator(.iPhoneXR), .iPhone11, .simulator(.iPhone11), .iPhone11Pro, .simulator(.iPhone11Pro), .iPhone11ProMax, .simulator(.iPhone11ProMax), .iPhone12, .simulator(.iPhone12), .iPhone12Mini, .simulator(.iPhone12Mini), .iPhone12Pro, .simulator(.iPhone12Pro), .iPhone12ProMax, .simulator(.iPhone12ProMax), .iPhone13, .simulator(.iPhone13), .iPhone13Mini, .simulator(.iPhone13Mini), .iPhone13Pro, .simulator(.iPhone13Pro), .iPhone13ProMax, .simulator(.iPhone13ProMax)]
    // holds all iPhone models that have the same resolution as the iPhone SE (1st Generation)
    private static let DEVICES_WITH_320X568_POINTS: [Device] = [.iPhoneSE, .simulator(.iPhoneSE), .iPodTouch7, .simulator(.iPodTouch7)]
    // holds all iPhone models that have the same resolution as the iPhone 7
    private static let DEVICES_WITH_375X667_POINTS: [Device] = [.iPhone7, .simulator(.iPhone7), .iPhone8, .simulator(.iPhone8), .iPhone6s, .simulator(.iPhone6s), .iPhoneSE2, .simulator(.iPhoneSE2), .iPhoneSE3, .simulator(.iPhoneSE3)]
    // holds all iPhone models that have the same resolution as the iPhone 7 Plus
    private static let DEVICES_WITH_414X736_POINTS: [Device] = [.iPhone7Plus, .simulator(.iPhone7Plus), .iPhone8Plus, .simulator(.iPhone8Plus), .iPhone6sPlus, .simulator(.iPhone6sPlus)]
    // holds all iPhone models that have the same resolution as the iPhone 12 Mini
    private static let DEVICES_WITH_360X780_POINTS: [Device] = [.iPhone12Mini, .simulator(.iPhone12Mini), .iPhone13Mini, .simulator(.iPhone13Mini)]
    // holds all iPhone models that have the same resolution as the iPhone X
    private static let DEVICES_WITH_375X812_POINTS: [Device] = [.iPhoneX, .simulator(.iPhoneX), .iPhoneXS, .simulator(.iPhoneXS), .iPhone11Pro, .simulator(.iPhone11Pro)]
    // holds all iPhone models that have the same resolution as the iPhone 12
    private static let DEVICES_WITH_390X844_POINTS : [Device] = [.iPhone12, .simulator(.iPhone12), .iPhone12Pro, .simulator(.iPhone12Pro), .iPhone13, .simulator(.iPhone13), .iPhone13Pro, .simulator(.iPhone13Pro)]
    // holds all iPhone models that have the same resolution as the iPhone XR
    private static let DEVICES_WITH_414X896_POINTS: [Device] = [.iPhoneXR, .simulator(.iPhoneXR), .iPhone11, .simulator(.iPhone11), .iPhoneXSMax, .simulator(.iPhoneXSMax), .iPhone11ProMax, .simulator(.iPhone11ProMax)]
    // holds all iPhone models that have the same resolution as the iPhone 12 ProMax
    private static let DEVICES_WITH_428X926_POINTS: [Device] = [.iPhone12ProMax, .simulator(.iPhone12ProMax), .iPhone13ProMax, .simulator(.iPhone13ProMax)]
    
    // tells whether the iPhone running the app has a notch
    public var hasNotch: Bool {
        // if the device exists inside the devices with notch array than it means it has a notch 🤪
        return Self.DEVICES_WITH_NOTCH.contains(self)
    }
    
    // tells if this device belongs to the iPhone SE (1st Generation) group
    public var isSEGroup: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_320X568_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone 7 group
    public var is7Group: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_375X667_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone 7 Plus group
    public var is7PlusGroup: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_414X736_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone 12 Mini group
    public var is12MiniGroup: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_360X780_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone X group
    public var isXGroup: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_375X812_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone 12 group
    public var is12Group: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_390X844_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone XR group
    public var isXRGroup: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_414X896_POINTS.contains(self)
    }
    // tells if this device belongs to the iPhone 12 Pro Max group
    public var is12ProMax: Bool {
        // if the device exists in the array it means it belongs to the group
        return Self.DEVICES_WITH_428X926_POINTS.contains(self)
    }
    
}
