//
//  EVIOServerMessageType.swift
//  
//
//  Created by Tiago Moreira on 23/12/2022.
//

import Foundation

public enum EVIOServerMessageType: String, Codable {
    
    case dialog
    case topMessage = "topmessage"
    
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
        case Self.topMessage.rawValue:
            self = .topMessage
        default:
            self = .dialog
        }
    }
    
}
