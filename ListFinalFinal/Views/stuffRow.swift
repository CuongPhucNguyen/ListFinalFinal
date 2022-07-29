//
//  stuffRow.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import SwiftUI

struct stuffRow: View {
    @State var stuff: StuffObject
    
    
    var body: some View {
        Text("Wassup")
    }
}


struct stuffRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            stuffRow(stuff: stuffArray[0])
        }
    }
}
