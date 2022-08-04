//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Joe McGuinness on 02/08/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate).frame(height: 300).ignoresSafeArea(edges: .top)
            CircleImage(image: landmark.image).offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                Text(landmark.name)
                    .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                Spacer()
                HStack {
                    Text(landmark.address).accessibilityIdentifier("address text")
                    Spacer()
                    //Text(landmark.state)
                }.font(.subheadline).foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2).accessibilityIdentifier("header text")
                Text(landmark.description).accessibilityIdentifier("body text")
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
