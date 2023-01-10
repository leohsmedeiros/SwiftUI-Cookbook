//
//  CreatingGradients.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct CreatingGradients: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AngularGradient(colors: [.red, .blue, .purple, .pink], center: .center))
        
//        .background(RadialGradient(gradient: Gradient(colors: [.orange, .purple]),
//                                   center: .center,
//                                   startRadius: 10,
//                                   endRadius: 500)
//        )

//        .background(LinearGradient(gradient: Gradient(colors: [.red, .blue]),
//                                   startPoint: .leading,
//                                   endPoint: .trailing)
//        )
    }
}

struct CreatingGradients_Previews: PreviewProvider {
    static var previews: some View {
        CreatingGradients()
    }
}
