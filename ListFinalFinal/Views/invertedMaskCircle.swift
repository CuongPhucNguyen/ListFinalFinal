//
//  invertedMaskCircle.swift
//  ListFinalFinal
//
//  Created by Cuong Nguyen Phuc on 01/08/2022.
//

import Foundation
import SwiftUI

func rectHoleMaker(in rect: CGRect) -> Path{
    var shape = Rectangle().path(in: rect)
    shape.addPath(Circle().path(in: rect))
    return shape
}


struct testInvertedMask: View {
    let rect: CGRect = UIScreen.main.bounds
    var body: some View{
        Rectangle()
            .fill(Color(red: 0.03, green: 0.03, blue: 0.35))
    }
}
