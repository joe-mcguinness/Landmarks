//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Joe McGuinness on 02/08/2022.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
        .accessibilityIdentifier("favouritesStarButton")
    }
}

    

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))

    }
}
