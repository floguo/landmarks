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
                // Add consistent navigation view style for watchOS
                #if os(watchOS)
                .navigationBarTitleDisplayMode(.inline)
                #endif
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
