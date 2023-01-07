//
//  HeroAnimationUsingMatchedGeometryEffect.swift
//  GridsAndStacks
//
//  Created by Leonardo Medeiros on 07/01/23.
//

import SwiftUI

struct HeroAnimationUsingMatchedGeometryEffect: View {
    @Namespace private var namespace
    @State private var selectedSymbol: String?
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let symbols = [
        "keyboard",
        "hifispeaker.fill",
        "printer.fill",
        "tv.fill",
        "desktopcomputer",
        "headphones",
        "tv.music.note",
        "mic",
        "plus.bubble",
        "video"
    ]
    
    var body: some View {
        VStack {
            if let selectedSymbol = selectedSymbol {
                Image(systemName: selectedSymbol)
                    .font(.system(size: 70))
                    .matchedGeometryEffect(id: selectedSymbol, in: namespace)
                    .onTapGesture {
                        withAnimation {
                            self.selectedSymbol = nil
                        }
                    }
                Spacer()
            } else {
                LazyVGrid (columns: columns) {
                    ForEach(symbols, id: \.self) { symbol in
                        Image(systemName: symbol)
                            .padding()
                            .font(.title)
                            .matchedGeometryEffect(id:  symbol, in: namespace)
                            .onTapGesture {
                                withAnimation(.easeOut) {
                                    selectedSymbol = symbol
                                }
                            }
                    }
                }
            }
        }
    }
}

struct HeroAnimationUsingMatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        HeroAnimationUsingMatchedGeometryEffect()
    }
}
