//
//  ProductStore.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import Foundation

@MainActor
class StoreModel: ObservableObject {
    
    @Published var products: [Product] = []
    
    let productService: ProductService
    
    init(productService: ProductService) {
        self.productService = productService
    }
    
    func getProducts() async throws {
        products = try await productService.getProducts()
    }
}
