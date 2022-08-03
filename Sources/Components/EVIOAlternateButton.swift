//
//  EVIOAlternateButton.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 27/03/2020.
//  Copyright © 2020 João Tiago Ferreira Moreira . All rights reserved.
//

import UIKit
import SwiftUI

public final class EVIOAlternateButton: UIButton {
    
    public var callback: (() -> Void) = {}
    
    private let feedbackGenerator: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    
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
    
    public func prepare() {
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 10.0
        self.layer.borderColor = Color.primaryTextColor.uiColor.cgColor
        self.layer.borderWidth = 2.0
        self.layer.shadowColor = Color.secondaryShadowColor.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 4.0
        self.titleLabel?.font = UIFont(name: "Nunito-SemiBold", size: 18.0) ?? UIFont.systemFont(ofSize: 18.0, weight: .semibold)
        self.setTitleColor(Color.primaryTextColor.uiColor, for: .normal)
        self.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    @objc private func buttonTapped() {
        self.feedbackGenerator.impactOccurred()
        self.callback()
        self.layer.opacity = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) { [weak self] in
            guard let self = self else {return}
            self.layer.opacity = 1.0
        }
    }
    
}

public extension EVIOAlternateButton {
    
    func enable() {
        self.isEnabled = true
        self.setTitleColor(Color.primaryTextColor.uiColor, for: .normal)
        self.backgroundColor = UIColor.clear
        self.layer.borderColor = Color.primaryTextColor.uiColor.cgColor
    }
    
    func disable() {
        self.isEnabled = false
        self.setTitleColor(Color.tertiaryTextColor.uiColor, for: .disabled)
        self.backgroundColor = Color.fourthBackground.uiColor
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
}
