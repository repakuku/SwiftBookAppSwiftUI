//
//  Course.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/18/23.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
