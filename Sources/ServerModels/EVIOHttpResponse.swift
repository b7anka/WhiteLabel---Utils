//
//  EVIOHttpResponse.swift
//  WLModels
//
//  Created by Tiago Moreira on 01/12/2021.
//

import Foundation

public struct EVIOHttpResponse {
    
    public var error: Error?
    public var response: HTTPURLResponse?
    public var data: Data?
    
    public init(error: Error?, response: URLResponse?, data: Data?) {
        self.error = error
        self.response = response as? HTTPURLResponse
        self.data = data
    }
    
}
