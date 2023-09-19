//
//  ContentView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/18/23.
//

import SwiftUI

struct CourseListView: View {
    @StateObject private var viewModel = CourseListViewModel()
    
    #warning("TODO: fix image fetching")
    var body: some View {
        NavigationStack {
            List(viewModel.rows, id: \.courseName) { courseDetailsViewModel in
                NavigationLink(destination: CourseDetailsView(viewModel: courseDetailsViewModel)) {
                    RowView(viewModel: courseDetailsViewModel)
                }
                
            }
            .navigationTitle("Courses")
        }
        .task {
            await viewModel.fetchCourses()
        }
    }
}

#Preview {
    CourseListView()
}
