//
//  stuffRow.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import SwiftUI

struct stuffList: View {
    var body: some View {
        NavigationView{
            List(stuffArray, id: \.id){
                stuff in
                NavigationLink{
                    selectedView(stuff:stuff)
                }
                label:{
                    Stuff(stuff: stuff,delayIn:stuff.id)
                }
                .navigationTitle("Stuff list")
                .disabled(enterList)
            }
        }
    }
}


struct stuffList_Previews: PreviewProvider {
    static var previews: some View {
        stuffList()
    }
}
