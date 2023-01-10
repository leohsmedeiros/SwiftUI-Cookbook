//
//  RatingView.swift
//  GraphicsShapesPathsAndEffects
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct RatingView: View {
    @State private var rating: Int?
    
    func getSystemNameByIndex(_ index: Int) -> String {
        guard let rating = self.rating else {
            return "star"
        }
        
        return index <= rating ? "star.fill" : "star"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(1...5, id: \.self) { index in
                    Image(systemName: getSystemNameByIndex(index))
                        .onTapGesture {
                            rating = index
                        }
                }
            }
            .padding()
            Text("rating: \(rating ?? 0)")
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
