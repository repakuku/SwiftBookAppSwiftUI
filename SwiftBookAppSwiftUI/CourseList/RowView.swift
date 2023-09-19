//
//  RowView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import SwiftUI

struct RowView: View {
    let viewModel: CourseDetailsViewModel
    
    var body: some View {
        HStack {
            CourseImageView(
                imageData: viewModel.imageData,
                imageSize: CGSize(width: 130, height: 100),
                shadowIsOn: false
            )
            Text(viewModel.courseName)
            Spacer()
        }
    }
}

#Preview {
    RowView(viewModel: CourseDetailsViewModel(course: Course.getCourse()))
}
