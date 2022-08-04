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
        + SwiftUI Tutorials: SwiftUI Essentials Handling User Input
            URL: https://developer.apple.com/tutorials/swiftui/handling-user-input
*/

import Foundation
import SwiftUI

struct FavButton : View{
    @Binding var favBool: Bool
    var body: some View {
        Button{
            favBool.toggle()
        } label: {
            Image(systemName: favBool ? "star.fill" : "star").foregroundColor(.yellow)
        }
    }
}

struct favPreview : PreviewProvider {
    static var previews: some View {
        FavButton(favBool: .constant(true))
    }
}
