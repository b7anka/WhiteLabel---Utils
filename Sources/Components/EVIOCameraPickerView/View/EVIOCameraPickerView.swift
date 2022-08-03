//
//  EVIOCameraPickerView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/05/2022.
//

import SwiftUI

public struct EVIOCameraPickerView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    @StateObject private var viewModel: EVIOCameraPickerViewViewModel
    
    public init(imagesAllowedToTake: Int, imageChosen: @escaping (UIImage?) -> Void) {
        self._viewModel = StateObject(wrappedValue: EVIOCameraPickerViewViewModel(imagesAllowedToTake: imagesAllowedToTake, imageChosen: imageChosen))
    }
    
    public var body: some View {
        ZStack {
            EVIOImagePickerControllerRepresentable(pickerController: self.$viewModel.imagePicker, imageTaken: self.viewModel.imageTaken, didFinishTakenPhotos: self.viewModel.didFinishTakingPhotos)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: .zero) {
                Spacer()
                HStack(spacing: .zero) {
                    Text("\(EVIOLanguageManager.shared.language.generalAvailableImagesToTake) \(self.viewModel.imagesAllowedToTake)")
                        .modifier(EVIONoObjectsDefaultTitleModifier(color: .white, textAligment: .leading, lineLimit: nil))
                    Spacer()
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 15)
                HStack(spacing: .zero) {
                    EVIOCameraDismissButton(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    })
                    .padding([.vertical, .leading], 15)
                    Spacer()
                    Image(.logo)
                        .resizable()
                        .aspectRatio(nil, contentMode: .fit)
                        .frame(width: 100, height: nil)
                    Spacer()
                    EVIOCameraTakePhotoButton(action: self.viewModel.takePhoto)
                    .padding([.vertical, .trailing], 15)
                }
                .background(Color.secondaryTextColor)
            }
        }
        .onChange(of: self.viewModel.closeView) { _ in
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
}
