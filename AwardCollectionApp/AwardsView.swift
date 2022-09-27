//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LeafsLogoView(
                        leafsIsOpen: .constant(true),
                        leadColor1: .blue,
                        leadColor2: .green,
                        strokeColor: .white,
                        strokeWidth: 14
                    )
                    .frame(width: 150, height: 150)
                    GradientRectangles()
                        .frame(width: 150, height: 150)
                    PathView()
                        .frame(width: 150, height: 150)
                    CurvesView()
                        .frame(width: 150, height: 150)
                    
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
