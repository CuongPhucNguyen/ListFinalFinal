//
//  StuffObject.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import Foundation
import SwiftUI
import CoreLocation




struct StuffObject:Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let desc: String
    let location: String
    let detailedDesc: String
    let iconName: String
    var isFavorite: Bool
    var icon: Image{
        Image(iconName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    
    
    
    
}

struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
}




