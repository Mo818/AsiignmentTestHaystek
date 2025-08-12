//
//  ProductListModel.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//

// MARK: - Model
struct Product: Identifiable, Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating
    
    struct Rating: Codable {
        let rate: Double
        let count: Int
    }
}
