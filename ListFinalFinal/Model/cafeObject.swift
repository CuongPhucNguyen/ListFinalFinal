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
        + SwiftUI Tutorials: SwiftUI Essentials Building Lists and Navigation
            URL: https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
*/


import Foundation
import SwiftUI
import CoreLocation



//struct of the mainly used object
/*
    The naming "Stuff" is due to having no specific topic to work on
    at the beginning of the project therefore using a more generic
    name for any topic in general
 
    Hashable, Codable and Identifiable protocols were inplemented
    so that the project can add the JSON reading functionality
*/
struct cafeObject:Hashable, Codable, Identifiable {
// <----------------------------------------------Implemented on 20/07/2022------------------------------------------------->
    let id: Int                                         //constant id (Integer) to conform to the Identifiable protocol
    let name: String                                    //constant name (String) for the name of the objects
    let desc: String                                    //constant desc (String) for the general description of the object (currently unused due to being obsolete)
    let location: String                                //constant location (String) for the address of the object
    let detailedDesc: String                            //constant detailedDesc (String) for the detailed description of the object
    let iconName: String                                //constant iconName (String) to get the icon image's name that is used by the variable "icon"
    var isFavorite: Bool                                //variable isFavorite (Bool) is for checking whether it is currently marked as favorite by the JSON
    var icon: Image{                                    //variable icon (Image) is for getting the icon image from the asset
        Image(iconName)
    }
// <------------------------------------------------------end--------------------------------------------------------------->
// <----------------------------------------------Implemented on 01/08/2022------------------------------------------------->
    private var coordinates: Coordinates                //variable coordinates (Coordinates) is used to store the object's coordinate on the map
    var locationCoordinate: CLLocationCoordinate2D {    //variable locationCoordinate (CLLocationCoordinate2D) is used for parsing and getting the "latitude" and "longitude" variable in the "coordinates" variable for the map
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
struct Coordinates: Hashable, Codable {                 //struct Coordinates used for storing longitude and latitude of the object when parsing the JSON file
        var latitude: Double
        var longitude: Double
}
// <------------------------------------------------------end--------------------------------------------------------------->




