//
//  EVIOPageControlRepresentable.swift
//  evio
//
//  Created by João Moreira on 27/07/2021.
//  Copyright © 2021 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOPageControlRepresentable: UIViewRepresentable {
    
    @Binding public var currentSelection: Int
    @Binding public var numberOfPages: Int
    public var style: EVIOPageControl.Styles
    
    public init(currentSelection: Binding<Int>, numberOfPages: Binding<Int>, style: EVIOPageControl.Styles = .blackish) {
        self._currentSelection = currentSelection
        self._numberOfPages = numberOfPages
        self.style = style
    }
    
    public func makeUIView(context: UIViewRepresentableContext<EVIOPageControlRepresentable>) -> EVIOPageControl {
        let pageControl = EVIOPageControl()
        pageControl.style = self.style
        pageControl.numberOfPages = self.numberOfPages
        pageControl.currentPage = self.currentSelection
        return pageControl
    }
    
    public func updateUIView(_ pageControl: EVIOPageControl, context: UIViewRepresentableContext<EVIOPageControlRepresentable>) {
        pageControl.currentPage = self.currentSelection
        pageControl.numberOfPages = self.numberOfPages
    }
    
}
