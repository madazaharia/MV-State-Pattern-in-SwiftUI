//
//  Product.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let description: String
}
