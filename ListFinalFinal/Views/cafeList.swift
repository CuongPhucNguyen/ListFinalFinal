/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Nguyen Phuc Cuong
  ID: s381006
  Created  date: 20/07/2022
  Last modified: 03/08/2022
  Acknowledgement:
         + SwiftUI Tutorials: SwiftUI Essentials Building Lists and Navigation
             URL: https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
        + SwiftUI Tutorials: SwiftUI Essentials Handling User Input
            URL: https://developer.apple.com/tutorials/swiftui/handling-user-input
*/

import SwiftUI

struct CafeList: View {
    @EnvironmentObject var data: modelData
    @State var delayIntro: Double
    @State var showFav: Bool = false
    var filteredStuff: [CafeObject] {
        data.cafeArray.filter { stuff in
                (!showFav || stuff.isFavorite)
            }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle("Favorites only",isOn: $showFav)
                ForEach(filteredStuff){ stuff in
                    NavigationLink{
                        selectedView(stuff:stuff)
                    }
                    label:{
                        cafe(stuff: stuff,delayIn:Double(stuff.id) + (introFinish ? 0 : delayIntro)*10.0)
                    }
                    .navigationTitle("Cafe area list")
                    .disabled(enterList)
                }
            }
            .frame(width:UIScreen.main.bounds.width)
//            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())
        }
    }
    
}


struct stuffList_Previews: PreviewProvider {
    static var previews: some View {
        CafeList(delayIntro:0).environmentObject(modelData())
    }
}
