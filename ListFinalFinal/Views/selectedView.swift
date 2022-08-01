//
//  selectedView.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI

struct selectedView: View {
    @State var stuff: StuffObject
    var body: some View {
        VStack(alignment: .center){
            selectedImage()
            HStack{
                Text(stuff.name)
                    .font(.title)
                Spacer()
            }
                
            HStack{
                Text(stuff.desc)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Text(stuff.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Divider()
            HStack{
                Text("About \(stuff.name)")
                    .font(.title2)
                Spacer()
            }
            Text(stuff.detailedDesc)
                .font(.body)
                .frame(width:315,alignment:.leading)
            
            
            
                
        }
    }
}

struct selectedView_Previews: PreviewProvider {
    static var previews: some View {
        selectedView(stuff:stuffArray[0])
    }
}

