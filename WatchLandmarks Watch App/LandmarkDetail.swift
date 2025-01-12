//
//  ContentView.swift
//  Landmarks
//
//  Created by Flora Guo on 2025-01-05.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        @Bindable var modelData = modelData

        ScrollView(.vertical){
            VStack(spacing: 4){
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
                    .padding(8)
                    .padding(.bottom, 16)

                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                    .multilineTextAlignment(.center)

                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                .padding(.horizontal, 8)

                Divider()
                    .padding(.vertical, 4)

                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .multilineTextAlignment(.center)

                Text(landmark.state)
                    .font(.caption)

                Divider()
                    .padding(.vertical, 4)

                MapView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.horizontal, 12)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(landmark.name)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
