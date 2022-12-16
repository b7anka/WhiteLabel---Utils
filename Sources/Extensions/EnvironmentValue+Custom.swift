//
//  EnvironmentValue+Custom.swift
//  
//
//  Created by Tiago Moreira on 16/12/2022.
//

import SwiftUI

@available(iOS 14.0, *)
public extension EnvironmentValues {
    var dismiss: () -> Void {
        { presentationMode.wrappedValue.dismiss() }
    }
}
