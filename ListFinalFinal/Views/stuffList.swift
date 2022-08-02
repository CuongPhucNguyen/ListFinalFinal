//
//  stuffRow.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//
import SwiftUI

struct stuffList: View {
    @EnvironmentObject var data: modelData
    @State var delayIntro: Double
    @State var showFav: Bool = false {
        didSet{
            filteredStuff = filteredStuffTemp
        }
    }
    
    var filteredStuffTemp: [StuffObject] {
        data.stuffArray.filter { stuff in
                (!showFav || stuff.isFavorite)
            }
    }
    @State var filteredStuff: [StuffObject] = []
    
    
    
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFav) {
                    Text("Favorites only")
                }
                
                ForEach(filteredStuff){ stuff in
                    NavigationLink{
                        selectedView(stuff:stuff)
                    }
                    label:{
                        Stuff(stuff: stuff,delayIn:Double(stuff.id) + (introFinish ? 0 : delayIntro)*10.0)
                    }
                    .navigationTitle("Stuff list")
                    .disabled(enterList)
                }
            }
            .frame(width:UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
            .onAppear{
                filteredStuff = filteredStuffTemp
            }
        }
    }
    
}


struct stuffList_Previews: PreviewProvider {
    static var previews: some View {
        stuffList(delayIntro:0).environmentObject(modelData())
    }
}
