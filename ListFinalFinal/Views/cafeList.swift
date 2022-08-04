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


//Main list view
struct CafeList: View {
    
    //variable used for passing ObservableObject to check for changes in the object
    @EnvironmentObject var data: ModelData
    
    
    //Variable used for delaying the slide in animation of the list until the intro finish
    @State var delayIntro: Double
    
    
    //check if the "show favorite" is toggled on
    @State var showFav: Bool = false
    
    
    //filtering non-favorite object if showFav is false
    var filteredStuff: [CafeObject] {
        data.cafeArray.filter { stuff in
            (!showFav || stuff.isFavorite)
        }
    }
    
    
    //Main view
    var body: some View {
        NavigationView{
            //Create a list of objects
            List{
                //Toggling "show favorite" button
                Toggle("Favorites only",isOn: $showFav)
                
                
                //adding navigation link for each of the object in the list
                ForEach(filteredStuff){ stuff in
                    NavigationLink{
                        SelectedView(stuff:stuff)
                    }
                    
                    
                //adding label for the objects in the list
                label:{
                    CafeRow(stuff: stuff,delayIn:Double(stuff.id) + (introFinish ? 0 : delayIntro)*10.0)
                }
                .navigationTitle("Cafe area list")  //add title
                .disabled(enterList)                //check if the intro animation is completed. If disabled, the entering links will be disabled. If not disabled, links are available for using. The variable used is a global variable in the WelcomePage.swift file
                }
            }
            .frame(width:UIScreen.main.bounds.width)
            .listStyle(GroupedListStyle())
        }
    }
    
}


struct CafeList_Previews: PreviewProvider {
    static var previews: some View {
        CafeList(delayIntro:0).environmentObject(ModelData())
    }
}
