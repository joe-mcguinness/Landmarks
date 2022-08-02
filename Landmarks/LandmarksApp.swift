//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Joe McGuinness on 02/08/2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
