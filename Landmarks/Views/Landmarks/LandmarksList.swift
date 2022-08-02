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
                //Image("ustwo").resizable().frame(width: 300, height: 50)
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favourites only")
                }
                .accessibilityLabel("favouritesToggle")
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("ustwo studios")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList().environmentObject(ModelData())
    }
}
