//
//  ModelData.swift
//  Landmarks
//
//  Created by Joe McGuinness on 02/08/2022.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable> (_ filename:String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError()
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError()
    }
}
