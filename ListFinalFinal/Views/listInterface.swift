//
//  listInterface.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI







struct Stuff: View {
    @State var stuff: StuffObject
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
    .padding()
        
    }
}
    


struct Stuff_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            Stuff(stuff: stuffArray[0])
            Stuff(stuff: stuffArray[1])
        }
        
    }
}

