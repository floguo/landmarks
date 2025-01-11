//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Flora Guo on 2025-01-08.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationSplitView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) {key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
            }
            .listStyle(.inset)
                .navigationTitle("Featured")
                .toolbar {
                    
                }
        } detail: {
            Text("Select a landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
