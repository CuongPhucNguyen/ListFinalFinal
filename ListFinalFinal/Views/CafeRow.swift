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






//Structure for the object row displayed in the list
struct CafeRow: View {
    
    
    
    //passing in the object that is used for displaying the list
    var stuff: CafeObject
    
    
    
    //variable used for delaying the animation from playing before the intro sequence animation is completed. Also, the animation of each object is delayed based on their id to create a wave effect
    @State var delayIn: Double
    
    
    //variable used for keeping the row outside the border of the screen until the intro animation is completed. Once the intro animation is completed, the slide in animation of each of the objects in the list will be executed
    @State var moveIn: Double = UIScreen.main.bounds.width
    var body: some View {
        Group {
            ZStack{
                Color(red:255,green:255,blue:255)
                VStack(alignment: .leading){
                    
                    HStack{
                        Icon(icon: stuff.icon)
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
        
        
        
        //Play animation upon appearing
        .onAppear{
            
            
            if (!introFinish){
                moveIn = UIScreen.main.bounds.width
            }
            
            //Check if the "moveIn" variable is currently 0 to determine whether to trigger the move to the position animation. If it's not 0, thew animation will trigger and the object row will be moved into position. If it's 0, the position will remain unchanged
            if (moveIn != 0){
                
                
                //Animation will be played for 0.5 and each has a 0.1 delay time compare to the previous one should the id increase linearly (e.g. 1,2,3,...,9,10)
                withAnimation(.easeOut(duration: 0.5).delay(delayIn/10)){
                    
                    
                    //Execute reduce the moveIn variable to create moving effect
                    moveIn -= UIScreen.main.bounds.width
                }
            }
        }
        
        
    }
}



struct Stuff_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CafeRow(stuff: ModelData().cafeArray[2],delayIn: 2)
        }
        
    }
}

