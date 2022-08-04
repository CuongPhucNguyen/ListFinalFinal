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
*/

import SwiftUI

var enterList: Bool = true
var introFinish: Bool = false

struct welcomePage: View {
    @State var maskWidth: Double = 10000
    @State var maskHeight: Double = 10000
    @State var logoResizeW1: Double = 0
    @State var logoResizeH1: Double = 0
    @State var logoResizeW2: Double = 0
    @State var logoResizeH2: Double = 0
    @State var logoResizeW3: Double = 0
    @State var logoResizeH3: Double = 0
    @State var buttonDisable: Bool = true
    @State var rotateImg1: Double = 0.0
    @State var rotateImg2: Double = 0.0
    @State var rotateImg3: Double = 0.0
    @State var moveUp1: Double = 0.0
    @State var moveUp2: Double = 0.0
    @State var moveUp3: Double = 0.0
    @State var textOpacity: Double = 0.0
    @State var circleF1: Double = 0.0
    @State var circleT1: Double = 0.0
    @State var circleF2: Double = 0.0
    @State var circleT2: Double = 0.0
    @State var circleF3: Double = 0.0
    @State var circleT3: Double = 0.0
    var body: some View{
        ZStack{
            
            
            cafeList(delayIntro: 3.5).environmentObject(modelData())
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            Group{
                Color(red: 0.03, green: 0.03, blue: 0.35)
                    .edgesIgnoringSafeArea(.all)
                Image("rmit-logo")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: logoResizeW1, height: logoResizeH1)
                    .rotationEffect(.degrees(rotateImg1))
                    .foregroundColor(Color(red:0.9,green:0.9,blue:0.0))
                    .padding(.bottom, moveUp1)
                Image("rmit-logo")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: logoResizeW2, height: logoResizeH2)
                    .rotationEffect(.degrees(rotateImg2))
                    .foregroundColor(Color(red:0.9,green:0.75,blue:0.08))
                    .padding(.bottom, moveUp2)
                Image("rmit-logo")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: logoResizeW3, height: logoResizeH3)
                    .rotationEffect(.degrees(rotateImg3))
                    .foregroundColor(Color(red:0.9,green:0.5,blue:0.16))
                    .padding(.bottom, moveUp3)
                Group {
                    Circle()
                        .trim(from: circleF1,to: circleT1)
                        .stroke(Color.white,lineWidth: 20)
                        .frame(width: 350, height: 350)
                        
                    Circle()
                        .trim(from: circleF2,to: circleT2)
                        .stroke(Color.white,lineWidth: 20)
                        .frame(width: 300, height: 300)

                    Circle()
                        .trim(from: circleF3,to: circleT3)
                        .stroke(Color.white,lineWidth: 20)
                        .frame(width: 250, height: 250)
                }
                Text("Welcome")
                    .font(.largeTitle.weight(.heavy))
                    .foregroundColor(Color.white)
                    .padding(.top, 500)
                    .padding(.bottom,moveUp3)
                    .opacity(textOpacity)
                Text("App by Nguyen Phuc Cuong")
                    .font(.body.weight(.medium))
                    .foregroundColor(Color.white)
                    .padding(.top, 600)
                    .padding(.bottom,moveUp3)
                    .opacity(textOpacity)
                Text("(Student ID: s3881006)")
                    .font(.body.weight(.medium))
                    .foregroundColor(Color.white)
                    .padding(.top, 650)
                    .padding(.bottom,moveUp3)
                    .opacity(textOpacity)
                
            }
            .mask(
                Image("rmit-logo")
                    .resizable()
                    .frame(width: maskWidth, height: maskHeight)
            )
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 1)){
                rotateImg3 += 360
                logoResizeH3 += 400
                logoResizeW3 += 400
                circleT3 += 1.0
                withAnimation(.easeInOut(duration: 1).delay(0.1)){
                    circleF3 += 1.0
                }
            }
            withAnimation(.easeInOut(duration: 1).delay(0.1)){
                rotateImg2 += 360
                logoResizeH2 += 450
                logoResizeW2 += 450
                circleT2 += 1.0
                withAnimation(.easeInOut(duration: 1).delay(0.2)){
                    circleF2 += 1.0
                }
            }
            withAnimation(.easeInOut(duration: 1).delay(0.2)){
                rotateImg1 += 360
                logoResizeH1 += 500
                logoResizeW1 += 500
                circleT1 += 1.0
                withAnimation(.easeInOut(duration: 1).delay(0.3)){
                    circleF1 += 1.0
                }
            }
            withAnimation(.easeOut(duration: 1).delay(1.2)){
                moveUp3 += 250
                textOpacity += 1.0
            }
            withAnimation(.easeOut(duration: 1).delay(1.3)){
                moveUp2 += 250
            }
            withAnimation(.easeOut(duration: 1).delay(1.4)){
                moveUp1 += 250
            }
            withAnimation(.easeIn(duration: 1).delay(3.0)){
                maskWidth = 0.0
                maskHeight = 0.0
            }
            withAnimation(.easeInOut(duration: 0.5).delay(3.0)) {
                enterList.toggle()
                introFinish.toggle()
            }
            
            
        }
        
        
                
    }
}




struct welcomePage_Preview : PreviewProvider {
    static var previews: some View{
        welcomePage()
    }
}
