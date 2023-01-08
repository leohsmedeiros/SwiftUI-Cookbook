//
//  3DRotationView.swift
//  Gestures
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

struct _DRotationView: View {
    @State private var flipped: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                
            }
            .frame(maxWidth: 300, maxHeight: 100)
            .background(.linearGradient(Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .rotation3DEffect(flipped ? Angle(degrees: 180) : .zero,
                              axis: (x: 0.0, y: 1.0, z: 0.0))
            .animation(.default, value: flipped)
            .onTapGesture {
                flipped.toggle()
            }
        }
    }
}

struct _DRotationView_Previews: PreviewProvider {
    static var previews: some View {
        _DRotationView()
    }
}
