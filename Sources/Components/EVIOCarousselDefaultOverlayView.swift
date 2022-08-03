//
//  EVIOCarousselOverlayView.swift
//  EVIO - WhiteLabel
//
//  Created by Tiago Moreira on 10/02/2022.
//

import UIKit

public protocol EVIOCarousselDefaultOverlayViewType {
    
    var titleLabel: UILabel { get }
    var subtitleLabel: UILabel { get }
    
}

public final class EVIOCarousselDefaultOverlayView: UIView, EVIOCarousselDefaultOverlayViewType {
    
    public lazy var subtitleLabel: UILabel = {
        return self.createLabel()
    }()
    
    public lazy var titleLabel: UILabel = {
        return self.createLabel()
    }()
    
    private var textColor: UIColor = .white

    public init(textColor: UIColor = .white) {
        super.init(frame: .zero)
        self.textColor = textColor
        self.setup()
        self.addConstrains()
    }
    
    override public init(frame: CGRect) {
        fatalError("use custom init method")
    }
    
    required public init?(coder: NSCoder) {
        fatalError("use custom init method")
    }
    
    private func setup() {
        self.backgroundColor = .clear
        self.isUserInteractionEnabled = false
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.subtitleLabel)
        self.addSubview(self.titleLabel)
    }
    
    private func addConstrains() {
        NSLayoutConstraint.activate([
            self.subtitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.subtitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.subtitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.titleLabel.bottomAnchor.constraint(equalTo: self.subtitleLabel.topAnchor)
        ])
    }
    
    private func createLabel() -> UILabel {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: .appFontSemiBold, size: 12) ?? UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .left
        label.numberOfLines = 1
        label.textColor = self.textColor
        label.minimumScaleFactor = 0.5
        return label
    }

}
