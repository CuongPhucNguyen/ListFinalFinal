//
//  listInterface.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI







struct Stuff: View {
    @State var stuff: StuffObject
    @State var delayIn: Double
    @State var moveIn: Double = UIScreen.main.bounds.width
    @State var appearOnce: Bool = false
    var body: some View {
            Group {
                ZStack{
                    Color(red:255,green:255,blue:255)
                    VStack(alignment: .leading){
                        
                        HStack{
                            icon(icon: stuff.icon)
                            Text(stuff.name)
                                .font(.title)
                        }
                        HStack{
                            Text(stuff.desc)
                                .font(.subheadline)
                            Spacer()
                            Text(stuff.location)
                                .font(.subheadline)
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height:100)
            }
            .offset(x:moveIn,y:0)
            .onAppear{
                if (!appearOnce){
                    appearOnce.toggle()
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
            Stuff(stuff: stuffArray[0],delayIn: 1)
            Stuff(stuff: stuffArray[1],delayIn: 2)
        }
        
    }
}

