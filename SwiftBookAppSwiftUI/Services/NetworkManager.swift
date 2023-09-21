//
//  NetworkManager.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/18/23.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case decodingError
    case noData
}

final class NetworkManager {
    static let shared = NetworkManager()
    
    private let api = "https://swiftbook.ru//wp-content/uploads/api/api_courses"
    
    private init() {}
    
    func fetchCourses() async throws -> [Course] {
        guard let url = URL(string: api) else {
            throw NetworkError.invalidUrl
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            return try decoder.decode([Course].self, from: data)
        } catch {
            throw NetworkError.decodingError
        }
    }
}
