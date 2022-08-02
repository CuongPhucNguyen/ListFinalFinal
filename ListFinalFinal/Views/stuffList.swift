//
//  stuffRow.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import SwiftUI

struct stuffList: View {
    @State var delayIntro: Double
    var body: some View {
        NavigationView{
            List(stuffArray, id: \.id){
                stuff in
                NavigationLink{
                    selectedView(stuff:stuff)
                }
                label:{
                    Stuff(stuff: stuff,delayIn:Double(stuff.id) + (introFinish ? 0 : delayIntro)*10.0)
                }
                .navigationTitle("Stuff list")
                .disabled(enterList)
                
            }
            .frame(width:UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
        }
    }
}


struct stuffList_Previews: PreviewProvider {
    static var previews: some View {
        stuffList(delayIntro:0)
    }
}
