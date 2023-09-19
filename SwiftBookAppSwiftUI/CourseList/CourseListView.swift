//
//  ContentView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/18/23.
//

import SwiftUI

struct CourseListView: View {
    @StateObject private var viewModel = CourseListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.rows, id: \.courseName) { courseDetailsViewModel in
                NavigationLink(destination: CourseDetailsView(viewModel: courseDetailsViewModel)) {
                    Text(courseDetailsViewModel.courseName)
                }
            }
        }
        .task {
            await viewModel.fetchCourses()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}
