//
//  StorageManager.swift
//  SwiftBookAppSwiftUI
//
//  Created by Alexey Turulin on 9/19/23.
//

import SwiftUI

final class StorageManager {
    static let shared = StorageManager()
    
    private init() {}
    
    func getStatus(for courseName: String) -> Bool {
        UserDefaults.standard.bool(forKey: courseName)
    }
    
    func set(_ status: Bool, for courseName: String) {
        UserDefaults.standard.setValue(status, forKey: courseName)
    }
}
