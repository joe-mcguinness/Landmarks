//
//  ContentView.swift
//  Landmarks
//
//  Created by Joe McGuinness on 02/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
