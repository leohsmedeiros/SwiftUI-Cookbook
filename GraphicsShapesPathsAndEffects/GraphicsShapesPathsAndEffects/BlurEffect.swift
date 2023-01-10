//
//  BlurEffect.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    typealias UIViewType = UIVisualEffectView
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView()
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = self.effect
    }
}

struct BlurEffect: View {
    var body: some View {
        // #1st way
        ZStack {
            Image("sky")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            .blur(radius: 20.0)
            Text("SKY")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        
        /*
        // #2nd way
        ZStack {
            Image("sky")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VisualEffectView(effect: UIBlurEffect(style: .light))
                .edgesIgnoringSafeArea(.all)

            Text("SKY")
                .font(.largeTitle)
                .foregroundColor(.black)
        }
         */

        /*
        // #3rd way (only on iOS 15 or above)
        ZStack {
            Image("sky")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            Text("SKY")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.ultraThinMaterial)
        }
         */

    }
}

struct BlurEffect_Previews: PreviewProvider {
    static var previews: some View {
        BlurEffect()
    }
}
