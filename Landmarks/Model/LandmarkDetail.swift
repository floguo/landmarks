//
//  ContentView.swift
//  Landmarks
//
//  Created by Flora Guo on 2025-01-05.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack {
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    HStack{
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                        Spacer()
                        Text("California")
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Location description here")
                     
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

