//
//  EVIOCameraView.swift
//  My Notes
//
//  Created by João Moreira on 27/03/2021.
//

import SwiftUI

public struct EVIOCameraView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @StateObject public var cameraViewModel: EVIOCameraViewViewModel
    @Binding public var permissionsNotGiven: Bool
    
    public init(permissionsNotGiven: Binding<Bool>, completion: @escaping (String) -> Void) {
        self._permissionsNotGiven = permissionsNotGiven
        self._cameraViewModel = StateObject(wrappedValue: EVIOCameraViewViewModel(completion: completion))
    }
    
    public var body: some View {
        ZStack(alignment: .topLeading) {
            EVIOCameraPreview(cameraViewModel: self.cameraViewModel)
                .onChange(of: self.cameraViewModel.permissionsNotGiven, perform: { newValue in
                    self.permissionsNotGiven = newValue
                })
                .onAppear {
                    self.cameraViewModel.checkPermission()
                }
            Button(action: {
                self.cameraViewModel.feedbackGenerator.impactOccurred()
                self.cameraViewModel.toggleFlashLight()
            }) {
                HStack(spacing: .zero) {
                    Spacer()
                    Rectangle()
                        .fill(Color.transparent)
                        .frame(width: 50, height: 50)
                        .overlay(
                            Image(systemName: self.cameraViewModel.flashLightOn ? .boltFill : .bolt)
                                .resizable()
                                .aspectRatio(nil, contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: nil, height: 30)
                            
                        )
                }
                .padding(.top, 10)
                .padding(.trailing, 10)
            }
        }
    }
    
}
