//
//  listInterface.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI







struct Stuff: View {
    @State var stuff: StuffObject
    @State var delayIn: Int
    @State var moveIn: Double = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                icon()
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
        .padding(.leading,moveIn)
        .onAppear{
                withAnimation(.easeOut(duration: 0.5).delay(Double(delayIn-1) + 0.2)){
                moveIn -= UIScreen.main.bounds.width
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

