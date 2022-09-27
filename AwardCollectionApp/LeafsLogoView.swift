//
//  LeafsLogoView.swift
//  AwardsCollectionApp
//
//  Created by Вадим Гамзаев on 27.09.2022.
//

import SwiftUI

struct LeafsLogoView: View {
    
    @Binding var leafsIsOpen: Bool
    
    var leadColor1: Color
    var leadColor2: Color
    var strokeColor: Color
    
    var body: some View {
        ZStack {
            LeafView(rotation: leafsIsOpen ? -80 : 0,
                     color1: leadColor1,
                     color2: leadColor2,
                     strokeColor: strokeColor)
            .scaleEffect(0.8)
            LeafView(rotation: leafsIsOpen ? -40 : 0,
                     color1: leadColor1,
                     color2: leadColor2,
                     strokeColor: strokeColor)
            .scaleEffect(0.9)
            LeafView(rotation: leafsIsOpen ? 80 : 0,
                     color1: leadColor1,
                     color2: leadColor2,
                     strokeColor: strokeColor)
            .scaleEffect(0.8)
            LeafView(rotation: leafsIsOpen ? 40 : 0,
                     color1: leadColor1,
                     color2: leadColor2,
                     strokeColor: strokeColor)
            .scaleEffect(0.9)
            LeafView(rotation: 0.0,
                     color1: leadColor1,
                     color2: leadColor2,
                     strokeColor: strokeColor)
            .scaleEffect(1.2)
            
        }
        .scaleEffect(0.6)
        .animation(.interpolatingSpring(
            mass: 1,
            stiffness: 100,
            damping: 10,
            initialVelocity: 0
        )
        .delay(0.5), value: leafsIsOpen)
    }
}


struct LeafsLogoView_Previews: PreviewProvider {
    static var previews: some View {
        LeafsLogoView(leafsIsOpen: .constant(true), leadColor1: .blue, leadColor2: .green, strokeColor: .white)
            .frame(width: 250, height: 250)

    }
}
