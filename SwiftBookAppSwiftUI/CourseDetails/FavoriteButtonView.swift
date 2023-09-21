//
//  FavoriteButtonView.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/21/23.
//

import SwiftUI

struct FavoriteButtonView: View {
    let isFavorite: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(isFavorite ? .red : .gray)
        }
    }
}

#Preview {
    FavoriteButtonView(isFavorite: true, action: {} )
}
