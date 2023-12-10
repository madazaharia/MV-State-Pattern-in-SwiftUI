//
//  ContentView.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @EnvironmentObject private var storeModel: StoreModel
    
    private func getProducts() async {
        do {
           try await storeModel.getProducts()
        } catch {
            print(error)
        }
    }
    
    // MARK: - Drawing
    var body: some View {
        List(storeModel.products) { product in
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.title3)
                
                Text(product.price as NSNumber, formatter: NumberFormatter.currency)
                    .font(.caption)
            }
        }
        .task {
            await getProducts()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(StoreModel(productService: ProductService()))
}
