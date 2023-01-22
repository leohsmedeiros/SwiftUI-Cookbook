//
//  MovieDetail.swift
//  SwiftUIAndCoreData
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI

struct MovieDetail: View {
    let movie: Movie
    @State private var movieName: String = ""
    @Binding var needsRefresh: Bool

    var body: some View {
        VStack {
            TextField(movie.title ?? "", text: $movieName)
                .textFieldStyle(.plain)
            
            Button("Update") {
                if !movieName.isEmpty {
                    movie.title = movieName
                    PersistenceController.shared.updateMovie()
                    needsRefresh = true
                }
            }
        }.padding()
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        let context = PersistenceController.shared.container.viewContext
        let movie = Movie(context: context)
        MovieDetail(movie: movie, needsRefresh: .constant(false))
    }
}
