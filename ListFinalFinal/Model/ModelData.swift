//
//  ModelData.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import Foundation
import Combine

final class modelData: ObservableObject {
    @Published var stuffArray: [StuffObject] = load(filename: "Data.json")
}




func load(filename: String) -> [StuffObject] {
    if let file = Bundle.main.url(forResource: filename, withExtension: nil){
        if let data = try? Data(contentsOf: file){
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([StuffObject].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(filename) file")
    }
    return [] as [StuffObject]
}
