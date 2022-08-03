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
*/


import SwiftUI

struct selectedView: View {
    @EnvironmentObject var data: modelData
    @State var stuff: StuffObject
    
    var stuffIndex: Int {
            data.stuffArray.firstIndex(where: { $0.id == stuff.id })!
        }
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center){
                ZStack{
                    MapView(coordinate: data.stuffArray[stuffIndex].locationCoordinate)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
                    VStack{
                    Spacer()
                        selectedImage(icon:stuff.icon)
                            .offset(x:0, y:50)
                    }
                }
                Spacer()
                    .frame(height: 50)
                HStack{
                    Text(stuff.name)
                        .font(.title)
                    Spacer()
                    favButton(favBool: $data.stuffArray[stuffIndex].isFavorite)
                    
                }
                .padding(.bottom, 10)
                .padding(.leading, 5)
                HStack{
                    Text(stuff.location)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.trailing, 5)
                    Spacer()
                }
                Divider()
                HStack{
                    Text("About \(stuff.name)")
                        .font(.title2)
                    Spacer()
                }
                .padding(.bottom, 10)
                .padding(.leading, 5)
                Text(stuff.detailedDesc)
                    .font(.body)
                    .frame(width:315,alignment:.leading)
                
                
                
                    
            }
        }
    }
}

struct selectedView_Previews: PreviewProvider {
    static var previews: some View {
        selectedView(stuff:modelData().stuffArray[0])
    }
}

