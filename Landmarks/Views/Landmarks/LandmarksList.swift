//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Joe McGuinness on 02/08/2022.
//

import SwiftUI

struct LandmarksList: View {
    @State private var showFavoritesOnly = false
    @EnvironmentObject var modelData: ModelData
    
    var filteredLandmarks: [Landmark] {
            modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favourites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList().environmentObject(ModelData())
    }
}
