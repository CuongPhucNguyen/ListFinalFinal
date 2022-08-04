//
//  Icon.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI


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

