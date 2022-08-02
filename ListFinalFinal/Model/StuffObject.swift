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
    var isFavorite: Bool
    var icon: Image{
        Image(iconName)
    }
    
    
    static func toJsonString(arr: [StuffObject]) -> String{
        var out: String = ""
        for stuff in arr {
            out.append(contentsOf: "[\n \t{\n")
            out.append(contentsOf: "\t\t\"id\" : \(stuff.id)\n")
            out.append(contentsOf: "\t\t\"name\":\"\(stuff.name)\"\n")
            out.append(contentsOf: "\t\t\"desc\":\"\(stuff.desc)\"\n")
            out.append(contentsOf: "\t\t\"location\":\"\(stuff.location)\"\n")
            out.append(contentsOf: "\t\t\"detailedDesc\":\"\(stuff.detailedDesc)\"\n")
            out.append(contentsOf: "\t\t\"iconName\":\"\(stuff.iconName)\"\n")
            out.append(contentsOf: "\t\t\"isFavorite\":\"\(stuff.isFavorite)\"\n")
            out.append(contentsOf: "\t}\n]")
        }
        return out
    }
}






