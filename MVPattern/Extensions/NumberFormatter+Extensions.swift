//
//  NumberFormatter+Extensions.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import Foundation

extension NumberFormatter {
    
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
