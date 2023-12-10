//
//  ProductService.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import Foundation

class ProductService {
    
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: Constants.productsStringURL) else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200
        else {
            throw NetworkError.badRequest
        }
        
        let products = try JSONDecoder().decode([Product].self, from: data)
        return products
    }
    
    func addProduct(_ product: Product) {
        // code...
    }
    
    func loadCart() {
        // code...
    }
    
    func loadUsers() {
        // code...
    }
}
