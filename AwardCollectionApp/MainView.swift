//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Вадим Гамзаев on 27.09.2022.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    @State private var leafsOpen = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
                }
            }
            
            Spacer()
            if awardIsShowing {
                LeafsLogoView(leafsIsOpen: $leafsOpen,
                              leadColor1: .blue,
                              leadColor2: .green,
                              strokeColor: .white)
                    .frame(width: 250, height: 250)
                    .transition(.leadingSlide)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
        leafsOpen.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension AnyTransition {
    static var leadingSlide: AnyTransition {
        let insertion = AnyTransition.scale
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
