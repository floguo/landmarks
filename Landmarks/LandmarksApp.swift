//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Flora Guo on 2025-01-04.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
