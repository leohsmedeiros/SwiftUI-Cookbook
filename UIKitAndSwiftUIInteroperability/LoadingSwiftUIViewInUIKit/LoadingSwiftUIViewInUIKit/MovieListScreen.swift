//
//  MovieListScreen.swift
//  LoadingSwiftUIViewInUIKit
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI

struct MovieListScreen: View {
    var body: some View {
        NavigationView {
            List(1...20, id: \.self) { index in
                NavigationLink(destination: MovieDetails(name: "Movie \(index)")) {
                    HStack {
                        Text("Movie \(index)")
                        Spacer()
                        RatingView(rating: .constant(Int.random(in: 1...5)))
                    }
                }
            }
        }
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
