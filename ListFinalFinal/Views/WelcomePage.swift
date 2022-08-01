//
//  WelcomePage.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 01/08/2022.
//

import SwiftUI

var enterList: Bool = true;


struct welcomePage: View {
    var body: some View{
        ZStack{
        Color(red: 0.03, green: 0.03, blue: 0.35)
            .edgesIgnoringSafeArea(.all)
        Image("rmit")
                .onAppear(){
                    withAnimation(Animation
                                    .easeIn(duration: 0.6))
                }
        }
    }
}


struct welcomePage_Preview : PreviewProvider {
    static var previews: some View{
        welcomePage()
    }
}
