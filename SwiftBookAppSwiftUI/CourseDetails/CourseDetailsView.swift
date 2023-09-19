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
            CourseImageView(
                imageData: Data(),
                imageSize: CGSize(width: 230, height: 180),
                shadowIsOn: true
            )
        }
    }
}

#Preview {
    CourseDetailsView(viewModel: CourseDetailsViewModel(course: Course.getCourse()))
}
