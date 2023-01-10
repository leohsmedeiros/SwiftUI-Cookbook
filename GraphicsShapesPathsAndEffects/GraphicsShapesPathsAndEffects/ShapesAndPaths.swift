//
//  ShapesAndPaths.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct ShapesAndPaths: View {
    var body: some View {
        VStack {
            Circle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(.blue)
                .frame(width: .infinity, height: 100)
            
            Capsule()
                .fill(.green)
                .frame(width: 100, height: 50)
            
            Ellipse()
                .fill(.purple)
                .frame(width: 100, height: 50)
            
            Path { p in
                p.move(to: CGPoint(x: 100, y: 100))
                p.addLine(to: CGPoint(x: 100, y: 300))
                p.addLine(to: CGPoint(x: 300, y: 300))
                p.addLine(to: CGPoint(x: 100, y: 100))
            }.stroke()

        }.padding()
    }
}

struct ShapesAndPaths_Previews: PreviewProvider {
    static var previews: some View {
        ShapesAndPaths()
    }
}
