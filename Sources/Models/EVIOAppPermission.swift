//
//  EVIOAppPermission.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/12/2021.
//

import Foundation

/// # ENUM THAT CONTAINS ALL PERMISSIONS CASE NECESSARY FOR THE GOOD USAGE OF THE APP
public enum EVIOAppPermission {
    
    // permission denied
    case denied
    // a permission request has not been made yet
    case askForIt
    // permission granted
    case authorized
    
}
