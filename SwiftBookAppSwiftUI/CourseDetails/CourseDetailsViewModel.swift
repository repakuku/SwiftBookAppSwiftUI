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
    
    private let course: Course
    
    init(course: Course) {
        self.course = course
    }
}
