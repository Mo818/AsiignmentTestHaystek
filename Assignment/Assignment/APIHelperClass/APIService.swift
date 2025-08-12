//
//  APIService.swift
//  Assignment
//
//  Created by Mohseen Shaikh on 12/08/2025.
//
import SwiftUI

// MARK: - API Service
class APIService {
    func fetchProducts() async throws -> [Product] {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Product].self, from: data)
    }
}
