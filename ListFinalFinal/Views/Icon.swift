//
//  Icon.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI


struct icon: View{
    var body: some View {
        Image("placeholder")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 2.5)
            }
            .shadow(radius: 2.5)
        
    }
}

struct selectedImage: View{
    var body: some View {
        Image("placeholder")
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
        selectedImage()
    }
}

