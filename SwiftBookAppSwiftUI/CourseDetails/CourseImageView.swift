//
//  CourseImageView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import SwiftUI

struct CourseImageView: View {
    let imageData: Data
    let imageSize: CGSize
    let cornerRadius: CGFloat
    let shadowIsOn: Bool
    
    var body: some View {
        getImage(from: imageData)
            .resizable()
            .frame(width: imageSize.width, height: imageSize.height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .shadow(radius: shadowIsOn ? 10 : 0)
    }
    
    private func getImage(from data: Data) -> Image {
        guard let image = UIImage(data: data) else { return Image(systemName: "xmark.shield")}
        
        return Image(uiImage: image)
    }
}

#Preview {
    CourseImageView(
        imageData: Data(),
        imageSize: CGSize(width: 230, height: 180),
        cornerRadius: 30,
        shadowIsOn: true
    )
}
