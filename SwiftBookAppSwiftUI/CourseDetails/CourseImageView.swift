//
//  CourseImageView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import SwiftUI

struct CourseImageView: View {
    let url: String
    let imageSize: CGSize
    let cornerRadius: CGFloat
    let shadowIsOn: Bool
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
            .frame(width: imageSize.width, height: imageSize.height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .shadow(radius: shadowIsOn ? 10 : 0)
    }
}

#Preview {
    CourseImageView(
        url: Course.getCourse().imageUrl,
        imageSize: CGSize(width: 230, height: 180),
        cornerRadius: 30,
        shadowIsOn: true
    )
}
