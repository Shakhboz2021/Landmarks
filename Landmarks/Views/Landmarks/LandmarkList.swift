//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Muhammad Tohirov on 27/05/25.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly: Bool = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle("Favorites only", isOn: $showFavoritesOnly)
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark to see more details.")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
