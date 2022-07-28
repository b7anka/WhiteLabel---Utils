//
//  UIImage+Scale.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 11/12/2021.
//

import UIKit
import SwiftUI

/// # EXTENSION THAT ADDS PROPERTIES AND FUNCTIONS TO THE SWIFT'S BUILT IN UI IMAGE CLASS
public extension UIImage {
    
    /// # SCALES AN UI IMAGE TO A SPECIFIC SIZE
    /// - Parameters:
    ///   - size: the new size to be scaled for
    ///   - hasAlpha: if the image is transparent
    /// - Returns: the scaled image or the original image if the scaling fails
    func scaleUIImageToSize(size: CGSize, hasAlpha: Bool = false) -> UIImage {
        // asks the UI Graphics to begin an image context with the options passed as parameters (size, alpha and scale)
        UIGraphicsBeginImageContextWithOptions(size, hasAlpha, .zero)
        // tells the image to start drawing itself inside the rect
        self.draw(in: CGRect(origin: .zero, size: size))
        // now we ask the UI Graphics for the image from the current image context (the one we begin above)
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        // we tell the UI Graphics to end the image context (we finished it already)
        UIGraphicsEndImageContext()
        return scaledImage ?? self
    }
    
    /// # SCALES AN IMAGE TO A SCALE FACTOR
    /// - Parameter scaleFactor: the scale factor to which the new image should the conform
    /// - Returns: returns a new image with the scale factor provided or the original image if the cgImage could not be parsed from the original image
    func scaleImageWith(scaleFactor: CGFloat = .defaultScaleFactorForMapAnnotations) -> UIImage {
        guard let cgImage = self.cgImage else { return self }
        return UIImage(cgImage: cgImage, scale: self.scale * scaleFactor, orientation: self.imageOrientation)
    }
    
    /// # CREATES AN IMAGE OF A CIRCLE WITH THE PARAMETERS PROVIDED
    /// - Parameters:
    ///   - diameter: the diameter of the circle
    ///   - width: the line width
    ///   - color: the stroke's color
    ///   - fill: the images's fill color
    /// - Returns: an image of a circle with the given parameters or nil if an error occurrs
    static func circle(diameter: CGFloat = 29, width: CGFloat = 0.5, color: UIColor? = UIColor.lightGray.withAlphaComponent(0.5), fill: UIColor? = .white) -> UIImage? {
        let circleLayer = CAShapeLayer()
        circleLayer.fillColor = fill?.cgColor
        circleLayer.strokeColor = color?.cgColor
        circleLayer.lineWidth = width
        let margin = width * 2
        let circle = UIBezierPath(ovalIn: CGRect(x: margin, y: margin, width: diameter, height: diameter))
        circleLayer.bounds = CGRect(x: 0, y: 0, width: diameter + margin * 2, height: diameter + margin * 2)
        circleLayer.path = circle.cgPath
        UIGraphicsBeginImageContextWithOptions(circleLayer.bounds.size, false, 0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        circleLayer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    /// # FUNCTION THAT TRIES TO CREATE AN IMAGE FROM A BASE 64 ENCONDED STRING
    /// - Parameter imageString: the base64 encoded string representing the image
    /// - Returns: the image converted from base64 encoded string or nil if it fails
    static func decodeBase64Image(_ imageString: String) -> UIImage? {
        // first we remove the part of the bas64 string that tells what type of image it is
        let newString = imageString.replacingOccurrences(of: "data:image/jpeg;base64,", with: "")
        // then we try to create a data object passing the new string as argument and then we try to create an image from that data object
        if let data = Data(base64Encoded: newString, options: .ignoreUnknownCharacters), let image: UIImage = UIImage(data: data) {
            // if successfully we return the image object
            return image
        }
        // if the above fails we return nil
        return nil
    }
    
    /// # FUNCTION THAT TRIES TO ENCODE AN IMAGE INTO A BASE 64 ENCONDED STRING
    /// - Returns: a base64 encoded string representing the image data or nil if it fails
    func encodeImageToBase64() -> String? {
        // we try create a data object from the jpegData function of the image with a quality of 0.8
        if let data: Data = self.jpegData(compressionQuality: 0.8) {
            // if successfully we create a string with the prefix that tells what type of image it is and we append the base64EncodedString from the data object
            let imageString = "data:image/jpeg;base64," + data.base64EncodedString(options: .lineLength64Characters)
            // we return the string
            return imageString
        }
        // if the above fails we return nil
        return nil
    }
    
    /// # FUNCTION THAT TRIES TO RESIZE AN IMAGE TO A GIVEN HEIGHT KEEPING IT'S ASPECT RATIO
    /// - Parameters:
    ///   - newHeight: the new height for the image
    /// - Returns: an image with the new height or nil if it fails
    func resizeImage(newHeight: CGFloat) -> UIImage? {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        guard let newImage = UIGraphicsGetImageFromCurrentImageContext(), let imageData: Data = newImage.jpegData(compressionQuality: 0.5), let image: UIImage = UIImage(data: imageData) else {
            UIGraphicsEndImageContext()
            return nil
        }
        UIGraphicsEndImageContext()
        return image
    }
    
    /// Given a required height, returns a (rasterised) copy
    /// of the image, aspect-fitted to that height.

    func aspectFittedToHeight(_ newHeight: CGFloat) -> (image: UIImage, width: CGFloat) {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        let newSize = CGSize(width: newWidth, height: newHeight)
        let renderer = UIGraphicsImageRenderer(size: newSize)
        let newImage = renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
        return (newImage, newWidth)
    }
    
}
