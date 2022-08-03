//
//  EVIOCameraPickerViewViewModel.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/05/2022.
//

import Foundation
import UIKit

final public class EVIOCameraPickerViewViewModel: ObservableObject {
    
    @Published public var imagePicker: UIImagePickerController?
    @Published public var closeView: Bool
    @Published public var imagesAllowedToTake: Int
    public var imageChosen: (UIImage?) -> Void
    
    public init(imagesAllowedToTake: Int, imageChosen: @escaping (UIImage?) -> Void) {
        self.imagesAllowedToTake = imagesAllowedToTake
        self.imageChosen = imageChosen
        self.closeView = false
        self.imagePicker = nil
    }
    
    public func imageTaken(_ image: UIImage?) {
        self.imagesAllowedToTake -= 1
        self.imageChosen(image)
    }
    
    public func didFinishTakingPhotos() {
        self.closeView = true
    }
    
    public func takePhoto() {
        guard self.imagesAllowedToTake > .zero else {
            self.didFinishTakingPhotos()
            return
        }
        self.imagePicker?.takePicture()
    }
    
}
