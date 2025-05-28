//
//  ContentView.swift
//  Landmarks
//
//  Created by Muhammad Tohirov on 26/05/25.
//

import CoreData
import SwiftUI

struct ContentView: View {
    var body: some View {
     LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
