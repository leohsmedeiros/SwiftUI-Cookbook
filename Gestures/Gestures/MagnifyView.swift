//
//  MagnifyView.swift
//  Gestures
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

struct MagnifyView: View {
    @State private var currentScale: CGFloat = 1.0
    @GestureState private var zoomFactor: CGFloat = 1.0
    
    var magnification: some Gesture {
        return MagnificationGesture()
            .updating($zoomFactor) { (value, scale, transaction) in
                scale = value
            }
            .onEnded { (value) in
                currentScale = 1.0
            }
    }
    
    var body: some View {
        Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(currentScale * zoomFactor)
            .gesture(magnification)
    }
}

struct MagnifyView_Previews: PreviewProvider {
    static var previews: some View {
        MagnifyView()
    }
}
