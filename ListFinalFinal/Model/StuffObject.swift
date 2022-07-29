//
//  StuffObject.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import Foundation
import SwiftUI




struct StuffObject: Codable, Identifiable {
    let id: Int
    let name: String
    let desc: String
    let location: String
    let detailedDesc: String
    let iconName: String
    let iconNameSelected: String
    
    var icon: Image{
        Image(iconName)
    }
    var iconSelected: Image {
        Image(iconNameSelected)
    }
    
    func jsonViewer() -> String {
        return "\(id) \n \(String(describing: name)) \n \(desc) \n \(location)"
    }
    
    func encoder() {
        let newEntry = StuffObject(id: 1, name: "name", desc: "desc", location: "location", detailedDesc: "detailedDesc", iconName: "placeholder", iconNameSelected: "placeholder")
        let jsonEncoder = JSONEncoder()
        let jsonData = try! jsonEncoder.encode(newEntry)
        _ = String(data: jsonData, encoding: String.Encoding.utf16)
    }
}






