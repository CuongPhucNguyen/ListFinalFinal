//
//  selectedView.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI

struct selectedView: View {
    @EnvironmentObject var data: modelData
    @State var stuff: StuffObject
    
    var stuffIndex: Int {
            data.stuffArray.firstIndex(where: { $0.id == stuff.id })!
        }
    
    var body: some View {
        VStack(alignment: .center){
//            MapView()
//                .ignoresSafeArea(edges: .top)
//                .frame(height: 300)
            selectedImage(icon:stuff.icon)
            
            HStack{
                Text(stuff.name)
                    .font(.title)
                Spacer()
                favButton(favBool: $data.stuffArray[stuffIndex].isFavorite)
                
            }
            .padding(.bottom, 10)
            .padding(.leading, 5)
            HStack{
                Text(stuff.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.trailing, 5)
                Spacer()
            }
            Divider()
            HStack{
                Text("About \(stuff.name)")
                    .font(.title2)
                Spacer()
            }
            .padding(.bottom, 10)
            .padding(.leading, 5)
            Text(stuff.detailedDesc)
                .font(.body)
                .frame(width:315,alignment:.leading)
            
            
            
                
        }
    }
}

struct selectedView_Previews: PreviewProvider {
    static var previews: some View {
        selectedView(stuff:modelData().stuffArray[0])
    }
}

