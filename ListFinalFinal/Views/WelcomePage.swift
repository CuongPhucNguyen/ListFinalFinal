//
//  WelcomePage.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 01/08/2022.
//

import SwiftUI

var enterList: Bool = true;


struct welcomePage: View {
    @State var logoOpacity: Double = 0.0
    @State var textOpacity: Double = 0.0
    @State var textMoveOut: Double = 0.0
    @State var textMoveIn: Double = 10.0
    @State var listForground: Double = 0.0
    @State var maskWidth: Double = 400
    @State var maskHeight: Double = 400
    @State var listOpacity: Double = 0.0
    @State var logoReziseW1: Double = 400
    @State var logoReziseH1: Double = 400
    @State var logoReziseW2: Double = 400
    @State var logoReziseH2: Double = 400
    @State var filterOpacity: Double = 0.0
    @State var buttonDisable: Bool = true
    var body: some View{
        ZStack{
            Color(red: 0.03, green: 0.03, blue: 0.35)
                .edgesIgnoringSafeArea(.all)
            Image("rmit-logo")
                .resizable()
                .renderingMode(.template)
                .frame(width: logoReziseW1, height: logoReziseH1)
                .opacity(listOpacity)
                .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.85))
            Image("rmit-logo")
                .resizable()
                .renderingMode(.template)
                .frame(width: logoReziseW2, height: logoReziseH2)
                .opacity(listOpacity)
                .foregroundColor(Color(red: 0.75, green: 0.75, blue: 1.0))
            stuffList()
                .mask(
                    Image("rmit-logo")
                        .resizable()
                        .frame(width: maskWidth, height: maskHeight)
                        .opacity(listOpacity)
                        .mask(
                            Image("rmit-logo")
                                .resizable()
                                .frame(width: logoReziseW1, height: logoReziseH1)
                                .opacity(listOpacity)
                                .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.35))
                                .mask(
                                    Image("rmit-logo")
                                        .resizable()
                                        .frame(width: logoReziseW2, height: logoReziseH2)
                                        .opacity(listOpacity)
                                        .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.35))
                                )
                        )
                        
                )
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            Color(red: 242/255, green: 242/255, blue: 247/255)
                .mask(
                    Image("rmit-logo")
                        .resizable()
                        .frame(width: maskWidth, height: maskHeight)
                )
                .opacity(filterOpacity)
            Image("rmit-logo")
                .resizable()
                .frame(width: maskWidth, height: maskHeight)
                .opacity(logoOpacity)
                .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.35))
            Text("Welcome")
                .opacity(logoOpacity-textOpacity)
                .font(.title)
                .foregroundColor(Color.white)
                .padding(.bottom, textMoveOut)
            Button("click to enter"){
                withAnimation(.easeIn(duration:0.5)){
                    listOpacity += 1.0
                    logoOpacity -= 1.0
                    textOpacity -= 1.0
                }
                withAnimation(.easeIn(duration: 0.5).delay(0.5)){
                    logoReziseH1 += 10000
                    logoReziseW1 += 10000
                }
                withAnimation(.easeOut(duration: 0.5).delay(0.65)){
                    logoReziseH2 += 10000
                    logoReziseW2 += 10000
                }
                withAnimation(.easeOut(duration: 0.5).delay(0.8)){
                    maskWidth += 10000
                    maskHeight += 10000
                }
                withAnimation(.easeOut(duration:1.0).delay(0.8)){
                    filterOpacity -= 1.0
                    enterList.toggle()
                }
            }
            .disabled(buttonDisable)
            .foregroundColor(Color.white)
            .font(Font.title)
            .opacity(textOpacity)
            .padding(.top, textMoveIn)
            
        }
        .onAppear{
            withAnimation(.easeIn(duration: 0.5)){
                logoOpacity += 1.0
            }
            withAnimation(.default.delay(0.5)){
                filterOpacity = 1.0
            }
            withAnimation(.easeIn(duration: 0.5).delay(1)){
                textOpacity += 1.0
                textMoveOut += 10
                textMoveIn -= 10
                buttonDisable.toggle()
            }
            
        }
        
        
                
    }
}




struct welcomePage_Preview : PreviewProvider {
    static var previews: some View{
        welcomePage()
    }
}
