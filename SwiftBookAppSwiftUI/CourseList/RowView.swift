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
                url: viewModel.imageUrl,
                imageScale: 4,
                cornerRadius: 10,
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
