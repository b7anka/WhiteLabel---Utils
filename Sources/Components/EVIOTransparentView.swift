//
//  EVIOTransparentView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 17/02/2022.
//

import UIKit

public final class EVIOTransparentView: UIView {
    
    private let dismissAction: (() -> Void)?
    
    public init(dismissAction: (() -> Void)?) {
        self.dismissAction = dismissAction
        super.init(frame: .zero)
        self.setupView()
    }
    
    public override init(frame: CGRect) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .clear
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissed))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc private func dismissed() {
        if let dismissAction = self.dismissAction {
            dismissAction()
        }
    }
    
}
