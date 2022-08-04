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






/*
 View for when user select the row in the row list that appears after the welcome screen
 this view display all the detailed information of the selected object
 */
struct SelectedView: View {
    @EnvironmentObject var data: ModelData
    @State var stuff: CafeObject
    
    //Get data when there's a match in the inputted object's id and the array's object's id
    var stuffIndex: Int {
        data.cafeArray.firstIndex(where: { $0.id == stuff.id })!
    }
    
    
    
    //Create view for selected view
    var body: some View {
        ScrollView{
            VStack(alignment: .center){
                ZStack{
                    
                    
                    //Adding map view
                    MapView(coordinate: data.cafeArray[stuffIndex].locationCoordinate)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
                    VStack{
                        Spacer()
                        SelectedImage(icon:stuff.icon)
                            .offset(x:0, y:50)
                    }
                }
                Spacer()
                    .frame(height: 50)
                HStack{
                    
                    
                    
                    //display the object's name
                    Text(stuff.name)
                        .font(.title)
                    Spacer()
                    
                    
                    
                    //Adding favorite button
                    FavButton(favBool: $data.cafeArray[stuffIndex].isFavorite)
                    
                }
                .padding(.bottom, 10)
                .padding(.leading, 5)
                HStack{
                    
                    
                    
                    //display the location information
                    Text(stuff.location)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.trailing, 5)
                    Spacer()
                }
                Divider()
                HStack{
                    
                    
                    //Display the "About" title
                    Text("About \(stuff.name)")
                        .font(.title2)
                    Spacer()
                }
                .padding(.bottom, 10)
                .padding(.leading, 5)
                
                
                
                //Display the detailed information
                Text(stuff.detailedDesc)
                    .font(.body)
                    .frame(width:315,alignment:.leading)
                
                
                
                
            }
        }
    }
}

struct SelectedView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedView(stuff:ModelData().cafeArray[0])
    }
}

