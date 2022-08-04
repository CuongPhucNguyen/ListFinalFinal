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





//ObservableObject class used for getting the JSON data and parse into an array that is named "stuffArray"
final class ModelData: ObservableObject {
    @Published var cafeArray: [CafeObject] = load(filename: "Data.json")
}



//JSON decoder function
func load(filename: String) -> [CafeObject] {
    if let file = Bundle.main.url(forResource: filename, withExtension: nil){           //getting the file's url from bundle
        if let data = try? Data(contentsOf: file){                                      //try to get the contents of the JSON file and pass it in the variable "data"
            do {
                let decoder = JSONDecoder()                                             //declare a new decoder
                let decoded = try decoder.decode([CafeObject].self, from: data)        //decode from the JSON file (which url is in the "data" variable) using []
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(filename) file")
    }
    return [] as [CafeObject]
}
