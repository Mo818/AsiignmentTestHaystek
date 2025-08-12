//
//  ProductDetailView.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                ZStack(alignment: .topLeading) {
                    AsyncImage(url: URL(string: product.image)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.1))
                    } placeholder: {
                        ProgressView()
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(product.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                    Text(product.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .padding(.top, 96)
        .edgesIgnoringSafeArea(.top)
    }
}
