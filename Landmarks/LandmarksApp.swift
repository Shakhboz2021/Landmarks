//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Muhammad Tohirov on 26/05/25.
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
