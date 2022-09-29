//
//  EVIODatePickerRepresentableView.swift
//  evio
//
//  Created by Tiago Moreira on 19/09/2022.
//  Copyright © 2022 João Tiago Ferreira Moreira . All rights reserved.
//

import SwiftUI

public struct EVIODatePickerRepresentableView: UIViewRepresentable {
   
    @Binding private var selectedDate: String
    private let delegate: EVIODatePickerDelegate?
    
    public init(selectedDate: Binding<String>, delegate: EVIODatePickerDelegate?) {
        self._selectedDate = selectedDate
        self.delegate = delegate
    }
    
    public func makeUIView(context: UIViewRepresentableContext<EVIODatePickerRepresentableView>) -> UIView {
        let datePicker = EVIODatePicker()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.evioDatePickerDelegate = self.delegate
        datePicker.setDate(date: self.selectedDate)
        let view: UIView = UIView()
        view.backgroundColor = .clear
        view.addSubview(datePicker)
        NSLayoutConstraint.activate([
            datePicker.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            datePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            datePicker.topAnchor.constraint(equalTo: view.topAnchor),
            datePicker.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        return view
    }
    
    public func updateUIView(_ picker: UIView, context: UIViewRepresentableContext<EVIODatePickerRepresentableView>) {
        
    }
    
}
