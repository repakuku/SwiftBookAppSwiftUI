//
//  CourseDetailsView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import SwiftUI

struct CourseDetailsView: View {
    @ObservedObject var viewModel: CourseDetailsViewModel
    
    var body: some View {
        Text(viewModel.course.name)
    }
}

#Preview {
    CourseDetailsView(viewModel: CourseDetailsViewModel(course: Course.getCourse()))
}
