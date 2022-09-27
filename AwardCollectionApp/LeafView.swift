//
//  LeafView.swift
//  AwardsCollectionApp
//
//  Created by Вадим Гамзаев on 26.09.2022.
//

import SwiftUI

struct LeafView: View {
    var rotation: Double
    var color1: Color
    var color2: Color
    var strokeColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let zeroTherty = size * 0.30
            let nearLine = size * 0.1
            let farLine = size
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: middle, y: nearLine))
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: farLine),
                        control: CGPoint(x: middle + zeroTherty, y: middle )
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: nearLine),
                        control: CGPoint(x: middle - zeroTherty, y: middle )
                    )
                    path.closeSubpath()
                }
                .stroke(strokeColor, lineWidth: 14)
                
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: nearLine))
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: farLine),
                        control: CGPoint(x: middle + zeroTherty, y: middle )
                    )
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: nearLine),
                        control: CGPoint(x: middle - zeroTherty, y: middle )
                    )
                    path.closeSubpath()
                }
                .fill(
                    RadialGradient(
                        colors: [color1, color2],
                        center: .center,
                        startRadius: size * 0.05,
                        endRadius: size * 0.6
                    )
                )

                Path { path in
                    path.addArc(
                        center: CGPoint(x: middle, y: nearLine),
                        radius: nearLine,
                        startAngle: .degrees(70),
                        endAngle: .degrees(110),
                        clockwise: true)
                }
                .stroke(Color.white, lineWidth: 1.5)
                
                Path { path in
                    path.addArc(
                        center: CGPoint(x: middle, y: nearLine * 1.5),
                        radius: nearLine * 1.6,
                        startAngle: .degrees(75),
                        endAngle: .degrees(110),
                        clockwise: true)
                }
                .stroke(Color.white, lineWidth: 1.5)


                Path { path in
                    path.addArc(
                        center: CGPoint(x: middle, y: nearLine + nearLine),
                        radius: nearLine + nearLine,
                        startAngle: .degrees(80),
                        endAngle: .degrees(105),
                        clockwise: true)
                }
                .stroke(Color.white, lineWidth: 1.5)
                
                Path { path in
                    path.addArc(
                        center: CGPoint(x: middle, y: nearLine * 2.8),
                        radius: nearLine * 2.5,
                        startAngle: .degrees(82),
                        endAngle: .degrees(102),
                        clockwise: true)
                }
                .stroke(Color.white, lineWidth: 2)
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: farLine))
                    path.addQuadCurve(
                        to: CGPoint(x: middle, y: nearLine),
                        control: CGPoint(x: middle - nearLine / 2.5, y: middle)
                    )
                }
                .stroke(Color.white, lineWidth: 2)
                
            }
            .rotationEffect(.degrees(rotation), anchor: .bottom)
        }
    }
}

struct IDrewPathView_Previews: PreviewProvider {
    static var previews: some View {
        LeafView(rotation: 0.0, color1: .green, color2: .blue, strokeColor: .white)
            .frame(width: 300, height: 300)
    }
}
