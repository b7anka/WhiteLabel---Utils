//
//  EVIOHourPickerRepresentableView.swift
//  evio
//
//  Created by Tiago Moreira on 19/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIOHourPickerRepresentableView: UIViewRepresentable {
    
    @Binding private var selectedHour: String
    private let delegate: EVIOHourPickerDelegate?
    
    public init(selectedHour: Binding<String>, delegate: EVIOHourPickerDelegate?) {
        self._selectedHour = selectedHour
        self.delegate = delegate
    }
    
    public func makeUIView(context: UIViewRepresentableContext<EVIOHourPickerRepresentableView>) -> UIView {
        let hourPicker = EVIOHourPicker(color: Color.primaryTextColor.uiColor)
        hourPicker.translatesAutoresizingMaskIntoConstraints = false
        hourPicker.evioHourDelegate = self.delegate
        hourPicker.setHour(hour: self.selectedHour)
        let view: UIView = UIView()
        view.backgroundColor = .clear
        view.addSubview(hourPicker)
        NSLayoutConstraint.activate([
            hourPicker.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hourPicker.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hourPicker.topAnchor.constraint(equalTo: view.topAnchor),
            hourPicker.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hourPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        return view
    }
    
    public func updateUIView(_ picker: UIView, context: UIViewRepresentableContext<EVIOHourPickerRepresentableView>) {
        
    }
    
}
