/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Nguyen Phuc Cuong
  ID: s381006
  Created  date: 20/07/2022
  Last modified: 03/08/2022
  Acknowledgement:
*/

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
