//
//  ProductListScene.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//
import SwiftUI

struct ProductListView: View {
    @StateObject private var viewModel = ProductViewModel()
    @State private var showCart = false
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(viewModel.products) { product in
                        NavigationLink(destination: ProductDetailView(product: product)) {
                            ProductCardView(
                                product: product,
                                isInCart: viewModel.cart.contains(where: { $0.id == product.id })
                            ) {
                                viewModel.toggleCart(for: product)
                            }
                        }
                        .buttonStyle(.plain) // Removes default NavigationLink styling
                    }
                }
                .padding()
            }
            .navigationTitle("Products")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showCart = true
                    } label: {
                        HStack {
                            Image(systemName: "cart")
                            if !viewModel.cart.isEmpty {
                                Text("\(viewModel.cart.count)")
                                    .font(.caption2)
                                    .foregroundColor(.white)
                                    .padding(4)
                                    .background(Color.red)
                                    .clipShape(Circle())
                            }
                        }
                    }
                }
            }
            .onAppear {
                viewModel.loadProducts()
            }
            .sheet(isPresented: $showCart) {
                CartView(cartItems: viewModel.cart)
            }
        }
    }
}


// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
