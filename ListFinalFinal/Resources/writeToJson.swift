//
//  writeToJson.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 02/08/2022.
//

import Foundation


func writeToJson(jsonString: String){
    let pathWithFilename = FileManager.default.urls(for: ., in: .userDomainMask)[0].appendingPathComponent("Data.json")
    do {
        let _ = print(pathWithFilename)
        try jsonString.write(to: pathWithFilename,
                            atomically: true,
                            encoding: .utf8)
        
    } catch {
       // Handle error
    }
   
}





