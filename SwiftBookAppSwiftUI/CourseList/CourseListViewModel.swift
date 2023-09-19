//
//  File.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import Foundation

final class CourseListViewModel: ObservableObject {
    @Published var rows: [CourseDetailsViewModel] = []
}
