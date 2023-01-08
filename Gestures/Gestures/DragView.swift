//
//  DragView.swift
//  Gestures
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import SwiftUI

struct DragView: View {
    @State private var position = CGPoint(x: 50, y: 50)
    @State private var danger = false
    let bounds = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            Image("cat")
                .resizable()
                .position(position)
                .frame(maxWidth: 100, maxHeight: 100)
                .zIndex(1.0)
                .gesture(DragGesture()
                    .onChanged { value in
                        position = value.location
                        danger = (position.y > bounds.height - 340)
                    }
                    .onEnded { value in
                        
                    }
                )
            Spacer()
            HStack {
                Text("Danger")
            }
            .zIndex(0.9)
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(danger ? .red : .green)
            .padding(.bottom, 10)
            .animation(.easeIn(duration: 0.3), value: danger)
        }
    }
}

struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}
