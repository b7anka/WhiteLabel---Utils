//
//  UIImageView+Custom.swift
//  EVIO - WhiteLabel
//
//  Created by João Tiago Ferreira Moreira on 08/07/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func setImageColor(color: UIColor) {
            let templateImage = self.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
            self.image = templateImage
            self.tintColor = color
    }
    
    func removeImageColor() {
        let templateImage = self.image?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        self.image = templateImage
    }
    
    var contentClippingRect: CGRect {
            guard let image = image else { return bounds }
            guard contentMode == .scaleAspectFit else { return bounds }
            guard image.size.width > 0 && image.size.height > 0 else { return bounds }

            let scale: CGFloat
            if image.size.width > image.size.height {
                scale = bounds.width / image.size.width
            } else {
                scale = bounds.height / image.size.height
            }

            let size = CGSize(width: image.size.width * scale, height: image.size.height * scale)
            let x = (bounds.width - size.width) / 2.0
            let y = (bounds.height - size.height) / 2.0

            return CGRect(x: x, y: y, width: size.width, height: size.height)
        }
    
}
