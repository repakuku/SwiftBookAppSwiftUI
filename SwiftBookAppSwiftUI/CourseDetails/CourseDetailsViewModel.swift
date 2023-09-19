//
//  CourseDetailsViewModel.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import Foundation

final class CourseDetailsViewModel: ObservableObject {
    var courseName: String {
        course.name
    }
    
    var imageData: Data {
        guard let data = try? NetworkManager.shared.fetchImageData(from: course.imageUrl) else {
            return Data()
        }
        return data
    }
    
    var numberOfLessons: String {
        "Number of lessons: \(course.numberOfLessons)"
    }
    
    var numberOfTests: String {
        "Number of tests: \(course.numberOfTests)"
    }
    
    @Published var isFavorite: Bool {
        didSet {
            StorageManager.shared.set(isFavorite, for: course.name)
        }
    }
    
    private let course: Course
    
    init(course: Course) {
        self.course = course
        isFavorite = StorageManager.shared.getStatus(for: course.name)
    }
    
    func favoriteButtonPressed() {
        isFavorite.toggle()
    }
}
