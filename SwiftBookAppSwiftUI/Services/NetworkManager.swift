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
    
    func fetchData(completion: @escaping ([Course]) -> Void) {
        guard let url = URL(string: api) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let courses = try decoder.decode([Course].self, from: data)
                completion(courses)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func fetchImage(from url: URL?) -> Data? {
        guard let url = url else { return nil }
        guard let imageData = try? Data(contentsOf: url) else { return nil }
        
        return imageData
    }
    
    func fetchImage(from url: URL?, completion: @escaping (Data) -> Void) {
        guard let url else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let imageData = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            completion(imageData)
        }
    }
}
