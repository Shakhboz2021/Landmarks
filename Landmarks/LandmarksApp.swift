//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Muhammad Tohirov on 26/05/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
