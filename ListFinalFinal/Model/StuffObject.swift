//
//  StuffObject.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import Foundation
import SwiftUI




struct StuffObject:Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let desc: String
    let location: String
    let detailedDesc: String
    let iconName: String
    let isFavorite: Bool
    var icon: Image{
        Image(iconName)
    }
}






