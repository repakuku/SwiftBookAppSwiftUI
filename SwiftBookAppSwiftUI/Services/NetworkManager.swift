//
//  NetworkManager.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/18/23.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    private let api = "https://swiftbook.ru//wp-content/uploads/api/api_courses"
    
    private init() {}
    
    func fetchCourses() async throws -> [Course] {
        
        return []
    }
    
    func fetchImage(from url: URL) throws -> Data {
        
        return Data()
    }
}
