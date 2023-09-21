//
//  CourseImageView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import SwiftUI

struct CourseImageView: View {
    let url: String
    let imageScale: CGFloat
    let cornerRadius: CGFloat
    let shadowIsOn: Bool
    
    var body: some View {
        AsyncImage(url: URL(string: url), scale: imageScale)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .shadow(radius: shadowIsOn ? 10 : 0)
    }
}

#Preview {
    CourseImageView(
        url: Course.getCourse().imageUrl,
        imageScale: 2,
        cornerRadius: 30,
        shadowIsOn: true
    )
}
