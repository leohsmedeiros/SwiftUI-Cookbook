//
//  RoundedCorners.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct RoundedCorners: View {
    var body: some View {
        HStack {
            Text("Hello, World!")
        }
        .padding()
        .background(.blue)
        .foregroundColor(.white)
//        .cornerRadius(15)
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

struct RoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCorners()
    }
}
