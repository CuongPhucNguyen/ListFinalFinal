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







struct cafe: View {
    var stuff: cafeObject
    @State var delayIn: Double
    @State var moveIn: Double = UIScreen.main.bounds.width
    var body: some View {
            Group {
                ZStack{
                    Color(red:255,green:255,blue:255)
                    VStack(alignment: .leading){
                        
                        HStack{
                            icon(icon: stuff.icon)
                            Text(stuff.name)
                                .font(.title)
                            Spacer()
                            if (stuff.isFavorite){
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                            }
                            
                        }
                        HStack{
                            Text(stuff.location)
                                .font(.subheadline)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:100)
            }
            .offset(x:moveIn,y:0)
            .onAppear{
                if (moveIn != 0){
                    withAnimation(.easeOut(duration: 0.5).delay(delayIn/10)){
                    moveIn -= UIScreen.main.bounds.width
                    }
            }
        }
        
        
    }
}
    


struct Stuff_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            cafe(stuff: modelData().cafeArray[2],delayIn: 2)
        }
        
    }
}

