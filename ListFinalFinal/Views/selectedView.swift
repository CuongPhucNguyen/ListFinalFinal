//
//  selectedView.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 29/07/2022.
//

import SwiftUI

struct selectedView: View {
    var body: some View {
        VStack(alignment: .center){
            selectedImage()
            HStack{
                Text("Stuff")
                    .font(.title)
                Spacer()
            }
                
            HStack{
                Text("desc")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Spacer()
                Text("location")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Divider()
            HStack{
                Text("About Stuff")
                    .font(.title2)
                Spacer()
            }
            Text("Detailed desc")
                .font(.body)
                .frame(width:315,alignment:.leading)
            
            
            
                
        }
    }
}

struct selectedView_Previews: PreviewProvider {
    static var previews: some View {
        selectedView()
    }
}

