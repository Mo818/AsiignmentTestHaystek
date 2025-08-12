//
//  CartView.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//

import SwiftUI

struct CartView: View {
    let cartItems: [Product]
    @Environment(\.dismiss) var dismiss
    @State private var showThankYou = false
    
    var body: some View {
        VStack {
            List(cartItems) { item in
                HStack {
                    AsyncImage(url: URL(string: item.image)) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text(item.title)
                        Text("$\(item.price, specifier: "%.2f")")
                            .foregroundColor(.green)
                    }
                }
            }
            
            Button("Checkout") {
                showThankYou = true
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .alert("Thank You", isPresented: $showThankYou) {
                Button("OK", role: .cancel) {
                    dismiss()
                }
            }
        }
    }
}
