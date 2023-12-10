//
//  MVPatternApp.swift
//  MVPattern
//
//  Created by Madalin Zaharia on 10.12.2023.
//

import SwiftUI

@main
struct MVPatternApp: App {
    
    @StateObject private var storeModel = StoreModel(productService: ProductService())
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(storeModel)
        }
    }
}
