//
//  UIView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 13/01/2022.
//

import UIKit

public extension UIView {
    
    enum Corners {
        case topLeftCorner
        case topRightCorner
        case bottomLeftCorner
        case bottomRightCorner
    }
    
    /// # METHOD THAT WHEN FIRED DISABLED THE ANIMATION ON THE WHOLE APP
    /// - Parameter work: the callback to be executed once this method is finished
    static func withoutAnimation(_ action: @escaping () -> Void) {
        // disables animation for whole app
        UIView.setAnimationsEnabled(false)
        // exectues the callback
        action()
        // after now plus 0.3 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            // enables animation for whole app again
            UIView.setAnimationsEnabled(true)
        }
    }
    
    func setRounded() {
        self.contentMode = UIView.ContentMode.scaleAspectFill
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
    
    func roundDiferentCorners(radius: CGFloat = 20.0, corners: [Corners] = [Corners.topLeftCorner, Corners.topRightCorner]) {
        
        var cornersMask: CACornerMask = []
        corners.forEach { (corner) in
            cornersMask.insert(self.getCornerForCACorner(corner: corner))
        }
        
        DispatchQueue.main.async {
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = cornersMask
        }
    }
    
    func startRotating(duration: Double = 0.5) {
        let kAnimationKey = "rotation"
         
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(Double.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    func stopRotating() {
        let kAnimationKey = "rotation"
         
        DispatchQueue.main.async {
            if self.layer.animation(forKey: kAnimationKey) != nil {
                self.layer.removeAnimation(forKey: kAnimationKey)
            }
        }
    }
    
    private func getCornerForCACorner(corner: Corners) -> CACornerMask {
        switch corner {
        case .topLeftCorner:
            return .layerMinXMinYCorner
        case .topRightCorner:
            return .layerMaxXMinYCorner
        case .bottomLeftCorner:
            return .layerMinXMaxYCorner
        default:
            return .layerMaxXMaxYCorner
        }
    }
    
}
