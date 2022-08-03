//
//  EVIOGPSNavigationShareModel.swift
//  WLModels
//
//  Created by João Tiago Ferreira Moreira on 08/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOGPSNavigationShareModel: Identifiable {
    
    public var id: UUID
    public var imageFileName: String?
    public var name: String?

    public init(imageFileName: String?, name: String?) {
        self.id = UUID()
        self.imageFileName = imageFileName
        self.name = name
    }
}

extension EVIOGPSNavigationShareModel: Equatable {
    public static func == (lhs: EVIOGPSNavigationShareModel, rhs: EVIOGPSNavigationShareModel) -> Bool {
        lhs.name == rhs.name
    }
}
