//
//  writeToJson.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 02/08/2022.
//

import Foundation


func writeToJson(jsonString: String){
    if let jsonData = jsonString.data(using: .utf8),
        let documentDirectory = FileManager.default.urls(for: .documentDirectory,
                                                         in: .userDomainMask).first {
        let pathWithFileName = documentDirectory.appendingPathComponent("myJsonData")
        do {
            try jsonData.write(to: pathWithFileName)
        } catch {
        }
    }
}





