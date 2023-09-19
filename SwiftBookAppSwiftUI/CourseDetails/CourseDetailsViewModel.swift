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
    
    private let course: Course
    
    init(course: Course) {
        self.course = course
    }
}
