//
//  String+ReturnURLs.swift
//  GoCharge
//
//  Created by Tiago Moreira on 09/06/2022.
//

import Foundation

public extension String {
    
    static var loginReturnUrl: String {
        #if DEBUG
        return "https://pre-idgo.go-evio.com/user/login/response"
        #else
        return "https://idgo.go-evio.com/user/login/response"
        #endif
    }
    static var registrationReturnUrl: String {
        #if DEBUG
        return "https://pre-idgo.go-evio.com/user/registration/response"
        #else
        return "https://idgo.go-evio.com/user/registration/response"
        #endif
    }
    static var logoutReturnUrl: String {
        #if DEBUG
        return "https://pre-idgo.go-evio.com/user/logout/response"
        #else
        return "https://idgo.go-evio.com/user/logout/response"
        #endif
    }
    static var recoverPasswordReturnUrl: String {
        #if DEBUG
        return "https://pre-idgo.go-evio.com/user/recover/response"
        #else
        return "https://idgo.go-evio.com/user/recover/response"
        #endif
    }
    
}
