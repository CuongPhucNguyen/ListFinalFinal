/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 2
 Author: Nguyen Phuc Cuong
 ID: s381006
 Created  date: 20/07/2022
 Last modified: 29/07/2022
 Acknowledgement:
*/

import SwiftUI

//View for the icon used in the list view
struct Icon: View{
    @State var icon: Image
    var body: some View {
        icon
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 2.5)
            }
            .shadow(radius: 2.5)
        
    }
}



//View for the icon used in the selected detailed view
struct SelectedImage: View{
    @State var icon: Image
    var body: some View {
        icon
            .resizable()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}




struct Full_Preview: PreviewProvider {
    static var previews: some View{
        SelectedImage(icon:
                        Image("placeholder"))
    }
}

