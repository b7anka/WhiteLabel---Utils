//
//  EVIOInformationIconView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 07/08/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOInformationIconView: View {
    
    public init() { }
    
    public var body: some View {
        Image(.infoIcon)
            .resizable()
            .aspectRatio(nil, contentMode: .fit)
            .frame(height: 16)
    }
    
}
