//
//  ProductStore.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import Foundation

/**
 At first glance, you may feel that Store is just a view model with a different name. But Store is NOT a view model. 
 Store is an aggregate root, which allows your app to get access to the model objects.
 We will NOT be creating separate view models per screen. 
 We will use Store directly in our view and get the data we need.
 If you want the store to be accessible easily in all views then you can inject store instance as an @EnvironmentObject.
 */

@MainActor
class StoreModel: ObservableObject { // act as Aggregate Root
    
    @Published var products: [Product] = []
    
    let productService: ProductService
    
    init(productService: ProductService) {
        self.productService = productService
    }
    
    func getProducts() async throws {
        products = try await productService.getProducts()
    }
}
