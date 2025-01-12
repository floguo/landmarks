//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Flora Guo on 2025-01-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
