//
//  WelcomePage.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 01/08/2022.
//

import SwiftUI

var enterList: Bool = true;


struct welcomePage: View {
    @State var rectOpacity: Double = 0.0
    @State var listForground: Double = 0.0
    @State var size: Double = 1
    var body: some View{
        ZStack{
            
            Color(red: 0.03, green: 0.03, blue: 0.35)
                .edgesIgnoringSafeArea(.all)
            Image("rmit-logo")
                .opacity(rectOpacity)
            stuffList()
                .clipped()
        }
        .onAppear{
            withAnimation(.easeIn(duration: 1)){
                rectOpacity += 1.0
            }
        }
                
    }
}


struct welcomePage_Preview : PreviewProvider {
    static var previews: some View{
        welcomePage()
    }
}
