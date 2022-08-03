//
//  EVIOPageControl.swift
//  EVIO - WhiteLabel
//
//  Created by João Tiago Ferreira Moreira on 11/04/2020.
//

import UIKit
import SwiftUI

public final class EVIOPageControl: UIView {
    
    public var numberOfPages: Int = 0 {
        didSet {
            
            dotViewArrayM.forEach { $0.removeFromSuperview() }
            dotViewArrayM.removeAll()
            
            for _ in 0..<numberOfPages {
                let dotView = UIView()
                dotView.layer.cornerRadius = radius
                addSubview(dotView)
                dotViewArrayM.append(dotView)
            }
            
            isInitialize = true
            setNeedsLayout()
        }
    }
    public var currentPage: Int {
        get {
            currentPageInner
        }
        set {
            if newValue < 0 ||
                newValue >= dotViewArrayM.count ||
                dotViewArrayM.isEmpty ||
                newValue == currentPage ||
                inAnimating {
                return
            }
           
            if newValue > currentPage {
                let currentView = dotViewArrayM[currentPage]
                bringSubviewToFront(currentView)
                inAnimating = true
                UIView.animate(withDuration: 0.1, animations: {
                    
                    let x = currentView.frame.origin.x
                    let y = currentView.frame.origin.y
                    let w = self.currentDotWidth + (self.dotSpace + self.otherDotWidth) * CGFloat(newValue - self.currentPage)
                    let h = currentView.frame.size.height
                    currentView.frame = CGRect(x: x, y: y, width: w, height: h)
                }) { (_) in
                    let endView = self.dotViewArrayM[newValue]
                    endView.backgroundColor = currentView.backgroundColor
                    endView.frame = currentView.frame
                    self.bringSubviewToFront(endView)
                    
                    currentView.backgroundColor = self.otherDotColor
                    
                    let start_X = currentView.frame.origin.x
                    for i in 0..<(newValue - self.currentPage) {
                        
                        let dotView = self.dotViewArrayM[self.currentPage + i]
                       
                        let x = start_X + (self.otherDotWidth + self.dotSpace) * CGFloat(i)
                        let y = dotView.frame.origin.y
                        let w = self.otherDotWidth
                        let h = self.dotHeight
                        dotView.frame = CGRect(x: x, y: y, width: w, height: h)
                    }
                    UIView.animate(withDuration: 0.1, animations: {
                        let w = self.currentDotWidth
                        let x = endView.frame.maxX - self.currentDotWidth
                        let y = endView.frame.origin.y
                        let h = endView.frame.size.height
                        endView.frame = CGRect(x: x, y: y, width: w, height: h)
                    }) { (_) in
                        self.currentPageInner = newValue
                        self.inAnimating = false
                    }
                }
            } else {
                if self.currentPage > self.dotViewArrayM.count-1 {
                    guard !self.dotViewArrayM.isEmpty else {return}
                    self.currentPage = max(self.dotViewArrayM.count-1, 0)
                }
                let currentView = self.dotViewArrayM[self.currentPage]
                bringSubviewToFront(currentView)
                inAnimating = true
                
                UIView.animate(withDuration: 0.1, animations: {
                    let x = currentView.frame.origin.x - (self.dotSpace + self.otherDotWidth) * CGFloat(self.currentPage - newValue)
                    let y = currentView.frame.origin.y
                    let w = self.currentDotWidth + (self.dotSpace + self.otherDotWidth) * CGFloat(self.currentPage - newValue)
                    let h = currentView.frame.size.height
                    currentView.frame = CGRect(x: x, y: y, width: w, height: h)
                }) { (_) in
                    let endView = self.dotViewArrayM[newValue]
                    endView.backgroundColor = currentView.backgroundColor
                    endView.frame = currentView.frame
                    self.bringSubviewToFront(endView)
                    
                    currentView.backgroundColor = self.otherDotColor
                    
                    let start_X = currentView.frame.maxX
                    for i in 0..<(self.currentPage - newValue) {
                        let dotView = self.dotViewArrayM[self.currentPage - i]
                        let tempFrame = dotView.frame
                        let x = start_X - self.otherDotWidth - (self.otherDotWidth + self.dotSpace) * CGFloat(i)
                        let y = tempFrame.origin.y
                        let w = self.otherDotWidth
                        let h = tempFrame.size.height
                        dotView.frame = CGRect(x: x, y: y, width: w, height: h)
                    }
                    
                    UIView.animate(withDuration: 0.1, animations: {
                        let x = endView.frame.origin.x
                        let y = endView.frame.origin.y
                        let w = self.currentDotWidth
                        let h = endView.frame.size.height
                        endView.frame = CGRect(x: x, y: y, width: w, height: h)
                    }) { (_) in
                        self.currentPageInner = newValue
                        self.inAnimating = false
                    }
                }
            }
        }
    }
    
    public var style: Styles = .blackish {
        didSet {
            self.prepareStyle(style: style)
        }
    }
    
    public enum Styles {
        case blackish
        case greenish
    }
    
    public var isToReset: Bool = false {
        didSet {
            if self.currentPageInner > self.dotViewArrayM.count-1 {
                let index = self.dotViewArrayM.count-1
                if index > -1 {
                    self.currentPageInner = self.dotViewArrayM.count-1
                }
            }
        }
    }
    
    public var currentDotWidth: CGFloat = 0
    public var otherDotWidth: CGFloat = 0
    public var dotHeight: CGFloat = 0
    public var dotSpace: CGFloat = 0
    public var radius: CGFloat = 0
    public var currentDotColor: UIColor = .red
    public var otherDotColor: UIColor = .lightGray
    
    private var currentPageInner: Int = 0
    private var dotViewArrayM = [UIView]()
    private var isInitialize: Bool = false
    private var inAnimating: Bool = false

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        setupUI()
    }
    
    public func clear() {
        self.numberOfPages = 0
        self.currentPage = 0
        self.currentPageInner = 0
        self.dotViewArrayM = []
    }
    
    private func prepareStyle(style: Styles) {
        switch style {
        case .greenish:
            self.setupGreenishStyle()
        default:
            self.setupBlackishStyle()
        }
    }
    
    private func setupBlackishStyle() {
        radius = 4
        dotHeight = 7.5
        dotSpace = 8
        currentDotWidth = 25
        otherDotWidth = 7.5
        otherDotColor = Color.tertiaryTextColor.uiColor
        currentDotColor = Color.primaryTextColor.uiColor
    }
    
    private func setupGreenishStyle() {
        radius = 4
        dotHeight = 7.5
        dotSpace = 8
        currentDotWidth = 25
        otherDotWidth = 7.5
        otherDotColor = UIColor.white
        currentDotColor = Color.tertiaryBackground.uiColor
    }
    
    private func setupUI() {
        if dotViewArrayM.isEmpty || isInitialize == false {
            return
        }
        self.isInitialize = false
        
        let totalWidth = currentDotWidth + (CGFloat)(numberOfPages - 1) * (dotSpace + otherDotWidth)
        var currentX = (frame.size.width - totalWidth) / 2
        
        for i in 0..<dotViewArrayM.count {
            let dotView = dotViewArrayM[i]

            let width = (i == currentPage ? currentDotWidth : otherDotWidth)
            let height = dotHeight
            let x = currentX
            let y = (frame.size.height - height) / 2
            dotView.frame = CGRect(x: x, y: y, width: width, height: height)
            
            currentX = currentX + width + dotSpace
            
            dotView.backgroundColor = otherDotColor
            if i == currentPage {
                dotView.backgroundColor = currentDotColor
            }
        }
    }
}
