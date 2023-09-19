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
        guard let courses = try? await NetworkManager.shared.fetchCourses() else { return }
        rows = courses.map { CourseDetailsViewModel(course: $0) }
    }
}
