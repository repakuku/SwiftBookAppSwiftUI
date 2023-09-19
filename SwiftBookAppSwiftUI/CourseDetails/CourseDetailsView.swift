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
        VStack {
            Text(viewModel.courseName)
                .font(.largeTitle)
            VStack(alignment: .leading, spacing: 20) {
                CourseImageView(
                    imageData: viewModel.imageData,
                    imageSize: CGSize(width: 230, height: 180),
                    cornerRadius: 30,
                    shadowIsOn: true
                )
                Text(viewModel.numberOfLessons)
                    .font(.headline)
                Text(viewModel.numberOfTests)
                    .font(.headline)
            }
            Spacer()
        }
    }
}

#Preview {
    CourseDetailsView(viewModel: CourseDetailsViewModel(course: Course.getCourse()))
}
