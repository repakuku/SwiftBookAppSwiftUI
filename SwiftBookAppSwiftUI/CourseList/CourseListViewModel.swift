//
//  File.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import Foundation

final class CourseListViewModel: ObservableObject {
    @Published var rows: [CourseDetailsViewModel] = []
    
    func fetchCourses() async {
        
        do {
            let courses = try await NetworkManager.shared.fetchCourses()
            
            DispatchQueue.main.async { [unowned self] in
                self.rows = courses.map { CourseDetailsViewModel(course: $0) }
            }
        } catch {
            print(error)
        }
    }
}
