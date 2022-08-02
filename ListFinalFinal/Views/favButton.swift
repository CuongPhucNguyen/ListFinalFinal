//
//  favButton.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 02/08/2022.
//

import Foundation
import SwiftUI

struct favButton : View{
    @Binding var favBool: Bool
    var body: some View {
        Button{
            favBool.toggle()
        } label: {
            Image(systemName: favBool ? "star.fill" : "star").foregroundColor(.yellow)
        }
    }
}

struct favPreview : PreviewProvider {
    static var previews: some View {
        favButton(favBool: .constant(true))
    }
}
