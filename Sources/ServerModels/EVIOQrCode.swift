//
//  EVIOQrCode.swift
//  evio
//
//  Created by João Tiago Ferreira Moreira on 02/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public struct EVIOQrCode: Codable {
    
    public var qrCodeNumber: Double?
    public var qrCodeId: String?
    public var qrCode: QrCode?
    public var charger: EVIOCharger?

}

extension EVIOQrCode: Equatable {
    
    public static func == (lhs: EVIOQrCode, rhs: EVIOQrCode) -> Bool {
        return lhs.qrCodeId == rhs.qrCodeId
    }
    
}
