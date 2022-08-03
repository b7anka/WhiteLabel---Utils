//
//  EVIOCustomChargeButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 04/04/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit
import SwiftUI

public enum EVIOCustomChargeButtonType {
    case chargeNow
    case notifyMe
    case customCharge
}

public enum EVIOCustomChargeButtonHeight: CGFloat {
    case collapsed = 45.0
    case expanded = 90.0
}

public final class EVIOCustomChargeButton: UIView {
    
    public var sizeChangedCallback: (() -> Void) = {}
    public var chargeNowCallback: (() -> Void) = {}
    public var notifyMeCallback: (() -> Void) = {}
    public var customChargeCallback: (() -> Void) = {}
    public var mode: EVIOCustomChargeButtonType = .chargeNow
    private var chargerNowButtonTrailingConstrain: NSLayoutConstraint?
    
    private lazy var chargeNowButton: UIButton = {
        let btn: UIButton = self.generateDefaultButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var notifyMeButton: UIButton = {
        let btn: UIButton = self.generateDefaultButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var customChargeButton: UIButton = {
        let btn: UIButton = self.generateDefaultButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var arrowImageView: UIImageView = {
        let imageView: UIImageView = UIImageView()
        imageView.image = UIImage(named: "arrowPointingDownWhite")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .center
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let languageManager: EVIOLanguage = EVIOLanguageManager.shared.language
    
    private var isExpanded: Bool = false
    private var heightConstrain: NSLayoutConstraint?
    private var feddbackGenerator: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    
    public init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.prepare()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        fatalError("not implemented yet")
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("not implemented yet")
    }
    
    private func prepare() {
        self.layer.cornerRadius = 10
        self.chargeNowButton.addTarget(self, action: #selector(self.chargeNowTapped), for: .touchUpInside)
        self.notifyMeButton.addTarget(self, action: #selector(self.notifyMeTapped), for: .touchUpInside)
        self.customChargeButton.addTarget(self, action: #selector(self.customChargeTapped), for: .touchUpInside)
        self.createArrowImageView()
        self.addSubview(self.chargeNowButton)
        self.addSubview(self.notifyMeButton)
        self.addSubview(self.customChargeButton)
        NSLayoutConstraint.activate([
            self.chargeNowButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.chargeNowButton.topAnchor.constraint(equalTo: self.topAnchor),
            self.chargeNowButton.heightAnchor.constraint(equalToConstant: EVIOCustomChargeButtonHeight.collapsed.rawValue),
            self.notifyMeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.notifyMeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.notifyMeButton.topAnchor.constraint(equalTo: self.topAnchor),
            self.notifyMeButton.heightAnchor.constraint(equalToConstant: EVIOCustomChargeButtonHeight.collapsed.rawValue),
            self.customChargeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.customChargeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.customChargeButton.topAnchor.constraint(equalTo: self.chargeNowButton.bottomAnchor),
            self.customChargeButton.heightAnchor.constraint(equalToConstant: EVIOCustomChargeButtonHeight.collapsed.rawValue)
        ])
        self.chargerNowButtonTrailingConstrain = self.chargeNowButton.trailingAnchor.constraint(equalTo: self.arrowImageView.leadingAnchor)
        self.chargerNowButtonTrailingConstrain?.isActive = true
        self.heightConstrain = self.heightAnchor.constraint(equalToConstant: EVIOCustomChargeButtonHeight.collapsed.rawValue)
        self.heightConstrain?.isActive = true
        if self.subviews.contains(self.arrowImageView) {
            self.bringSubviewToFront(self.arrowImageView)
        }
        self.setupTranslations()
        self.setMode(to: .chargeNow)
        self.collapse()
    }
    
    private func createArrowImageView() {
        self.addSubview(self.arrowImageView)
        NSLayoutConstraint.activate([
            self.arrowImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            self.arrowImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.arrowImageView.widthAnchor.constraint(equalToConstant: 24),
            self.arrowImageView.heightAnchor.constraint(equalToConstant: EVIOCustomChargeButtonHeight.collapsed.rawValue)
        ])
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.arrowTapped))
        self.arrowImageView.addGestureRecognizer(tapGesture)
    }
    
    private func setupTranslations() {
        self.chargeNowButton.setTitle(self.languageManager.chargerDetailsCharge, for: .normal)
        self.notifyMeButton.setTitle(self.languageManager.chargerDetailsNotifyMeLabel, for: .normal)
        self.customChargeButton.setTitle(self.languageManager.chargerDetailsCustomCharge, for: .normal)
    }
    
    public func enable() {
        self.isUserInteractionEnabled = true
        self.backgroundColor = Color.primaryTextColor.uiColor
        self.enableNotifyMeButton()
        self.enableCustomChargeButton()
        self.enableChargeNowButton()
        self.enableArrowImageView()
    }
    
    public func disable() {
        self.isUserInteractionEnabled = false
        self.backgroundColor = Color.fourthBackground.uiColor
        self.disableNotifyMeButton()
        self.disableCustomChargeButton()
        self.disableChargeNowButton()
        self.disableArrowImageView()
    }
    
    public func setMode(to mode: EVIOCustomChargeButtonType) {
        self.mode = mode
        switch mode {
        case .chargeNow:
            self.setupChargeNowMode()
        case .notifyMe:
            self.setupNotifyMyMode()
        case .customCharge:
            self.setupCustomChargeMode()
        }
        self.checkIfChargeNowButtonTrailingAnchorShouldBeChanged()
    }
    
    public func checkIfChargeNowButtonTrailingAnchorShouldBeChanged() {
        guard let chargeNowButtonTrailingConstrain = chargerNowButtonTrailingConstrain else {
            return
        }
        chargeNowButtonTrailingConstrain.isActive = false
        self.chargeNowButton.removeConstraint(chargeNowButtonTrailingConstrain)
        if self.arrowImageView.isHidden {
            self.chargerNowButtonTrailingConstrain = self.chargeNowButton.trailingAnchor.constraint(equalTo: self.trailingAnchor)
            self.chargerNowButtonTrailingConstrain?.isActive = true
            self.chargeNowButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        } else {
            self.chargerNowButtonTrailingConstrain = self.chargeNowButton.trailingAnchor.constraint(equalTo: self.arrowImageView.leadingAnchor)
            self.chargerNowButtonTrailingConstrain?.isActive = true
            self.chargeNowButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        }
    }
    
    private func generateDefaultButton() -> UIButton {
        let btn: UIButton = UIButton(type: .system)
        btn.titleLabel?.font = UIFont(name: "Nunito-SemiBold", size: 18.0) ?? UIFont.systemFont(ofSize: 18.0, weight: .semibold)
        btn.setTitleColor(.white, for: .normal)
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        btn.titleLabel?.minimumScaleFactor = 0.5
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
        return btn
    }
    
    private func setupChargeNowMode() {
        self.chargeNowButton.isHidden = false
        self.enableChargeNowButton()
        self.notifyMeButton.isHidden = true
        self.disableNotifyMeButton()
        self.arrowImageView.isHidden = false
        self.enableArrowImageView()
        self.sendSubviewToBack(self.notifyMeButton)
        self.bringSubviewToFront(self.chargeNowButton)
        if self.subviews.contains(self.arrowImageView) {
            self.bringSubviewToFront(self.arrowImageView)
        }
    }
    
    private func setupNotifyMyMode() {
        self.chargeNowButton.isHidden = true
        self.disableChargeNowButton()
        self.notifyMeButton.isHidden = false
        self.enableNotifyMeButton()
        self.arrowImageView.isHidden = true
        self.disableArrowImageView()
        self.sendSubviewToBack(self.chargeNowButton)
        self.bringSubviewToFront(self.notifyMeButton)
        self.collapse()
    }
    
    private func setupCustomChargeMode() {
        if self.isExpanded {
            self.collapse()
        } else {
            self.expand()
        }
    }
    
    public func collapse() {
        
        self.customChargeButton.isHidden = true
        self.disableCustomChargeButton()
        self.heightConstrain?.constant = EVIOCustomChargeButtonHeight.collapsed.rawValue
        self.restoreArrow()
        self.sizeChangedCallback()
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: .curveEaseOut) {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        } completion: { _ in
            self.isExpanded = false
        }
        
    }
    
    private func expand() {
        
        self.customChargeButton.isHidden = false
        self.enableCustomChargeButton()
        self.heightConstrain?.constant = EVIOCustomChargeButtonHeight.expanded.rawValue
        self.rotateArrow()
        self.sizeChangedCallback()
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.5, options: .curveEaseIn) {
            self.setNeedsLayout()
            self.layoutIfNeeded()
        } completion: { _ in
            self.isExpanded = true
        }
        
    }
    
    private func rotateArrow() {
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: .layoutSubviews, animations: {
            self.arrowImageView.transform = CGAffineTransform(rotationAngle: 0.999 * .pi)
        }, completion: nil)
        
    }
    
    private func restoreArrow() {
        
        UIView.animateKeyframes(withDuration: 0.5, delay: 0.0, options: .layoutSubviews, animations: {
            self.arrowImageView.transform = .identity
        }, completion: nil)
        
    }
    
    private func disableChargeNowButton() {
        self.chargeNowButton.isUserInteractionEnabled = false
        self.chargeNowButton.setTitleColor(Color.tertiaryTextColor.uiColor, for: .normal)
    }
    
    private func enableChargeNowButton() {
        self.chargeNowButton.isUserInteractionEnabled = true
        self.chargeNowButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    private func disableCustomChargeButton() {
        self.customChargeButton.isUserInteractionEnabled = false
        self.customChargeButton.setTitleColor(Color.tertiaryTextColor.uiColor, for: .normal)
    }
    
    private func enableCustomChargeButton() {
        self.customChargeButton.isUserInteractionEnabled = true
        self.customChargeButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    private func disableNotifyMeButton() {
        self.notifyMeButton.isUserInteractionEnabled = false
        self.notifyMeButton.setTitleColor(Color.tertiaryTextColor.uiColor, for: .normal)
    }
    
    private func enableNotifyMeButton() {
        self.notifyMeButton.isUserInteractionEnabled = true
        self.notifyMeButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    private func disableArrowImageView() {
        self.arrowImageView.isUserInteractionEnabled = false
    }
    
    private func enableArrowImageView() {
        self.arrowImageView.isUserInteractionEnabled = true
    }
    
    private func viewTapped() {
        self.feddbackGenerator.impactOccurred()
    }
    
    @objc private func notifyMeTapped() {
        self.viewTapped()
        self.notifyMeButton.layer.opacity = 0.5
        self.notifyMeCallback()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) { [weak self] in
            guard let self = self else {return}
            self.notifyMeButton.layer.opacity = 1.0
        }
    }
    
    @objc private func chargeNowTapped() {
        self.viewTapped()
        self.chargeNowButton.layer.opacity = 0.5
        self.chargeNowCallback()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) { [weak self] in
            guard let self = self else {return}
            self.chargeNowButton.layer.opacity = 1.0
        }
    }
    
    @objc private func customChargeTapped() {
        self.viewTapped()
        self.customChargeButton.layer.opacity = 0.5
        self.customChargeCallback()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) { [weak self] in
            guard let self = self else {return}
            self.customChargeButton.layer.opacity = 1.0
        }
    }
    
    @objc private func arrowTapped() {
        self.viewTapped()
        self.setMode(to: .customCharge)
    }
    
}
