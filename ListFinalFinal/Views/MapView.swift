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
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region: MKCoordinateRegion
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    init(coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate
        self.region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.0008, longitudeDelta: 0.0008)
            
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 10.73025182822871, longitude: 106.7089110547045))
        
    }
}
