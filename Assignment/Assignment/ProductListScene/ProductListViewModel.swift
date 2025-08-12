//
//  ProductListViewModel.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//

import SwiftUI

// MARK: - ViewModel
@MainActor
class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var cart: [Product] = []
    @Published var errorMessage: String?
    
    private let service = APIService()
    
    func loadProducts() {
        Task {
            do {
                products = try await service.fetchProducts()
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }
    
    func toggleCart(for product: Product) {
        if cart.contains(where: { $0.id == product.id }) {
            cart.removeAll { $0.id == product.id }
        } else {
            cart.append(product)
        }
    }
}
