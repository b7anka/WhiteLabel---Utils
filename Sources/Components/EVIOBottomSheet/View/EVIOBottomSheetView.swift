//
//  EVIOBottomSheetView.swift
//  evio
//
//  Created by João Moreira on 04/02/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOBottomSheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var viewModel: EVIOBottomSheetViewViewModel
    
    public init(title: String, cancelButtonTitle: String, items: [EVIOBottomSheetItem], slidingType: EVIOBottomSheetSlideType, action: @escaping (EVIOBottomSheetButton?, EVIOBottomSheetItem?) -> Void) {
        self._viewModel = StateObject(wrappedValue: EVIOBottomSheetViewViewModel(title: title, cancelButtonTitle: cancelButtonTitle, items: items, slidingType: slidingType, action: action))
    }
    
    public var body: some View {
        ZStack {
            Color.alternativeSemiTransparent
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    self.closeView()
                }
            EVIOBottomSheetMainView(viewModel: self.viewModel, closeView: {
                self.closeView()
            }, restoreColorAndDismiss: {
                self.restoreColorAndDismiss()
            })
                .edgesIgnoringSafeArea(.bottom)
        }
        .background(EVIOTransparentBackgroundView())
    }
    
    private func closeView() {
        self.viewModel.action(.cancelButton, nil)
        self.restoreColorAndDismiss()
    }
    
    private func restoreColorAndDismiss() {
        withoutAnimation {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
}
