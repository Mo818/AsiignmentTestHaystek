//
//  ProductCardView.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//
import SwiftUI

struct ProductCardView: View {
    let product: Product
    let isInCart: Bool
    let toggleCart: () -> Void
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable().scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 100)
            
            Text(product.title)
                .font(.headline)
                .lineLimit(2)
            
            Text("$\(product.price, specifier: "%.2f")")
                .foregroundColor(.green)
            
            HStack {
                Text("⭐️ \(product.rating.rate, specifier: "%.1f")")
                Spacer()
                Button(action: toggleCart) {
                    Image(systemName: isInCart ? "heart.fill" : "heart")
                        .foregroundColor(isInCart ? .red : .gray)
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 2))
    }
}
