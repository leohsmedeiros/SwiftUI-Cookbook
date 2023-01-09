//
//  DownloadAndDisplayImages.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct DownloadAndDisplayImages: View {
    let posters = [
        "https://i.pinimg.com/originals/1b/94/51/1b9451b88913528346b9cbd2eefdf999.jpg",
        "https://images-na.ssl-images-amazon.com/images/I/A17sLQDQurL._AC_SL1500_.jpg",
        "https://i.pinimg.com/originals",
        "https://i1.wp.com/batman-news.com/wp-content/uploads/2017/10/Justice-League-poster-Fandango.jpeg?resize=696%2C1031&quality=80&strip=info&ssl=1"
    ]
    
    var body: some View {
        List(self.posters, id:\.self) { poster in
            URLImage(url: poster)
                .aspectRatio(contentMode: .fit)
        }
//        URLImage(url: "https://i.pinimg.com/originals/1b/94/51/1b9451b88913528346b9cbd2eefdf999.jpg")
    }
}

struct DownloadAndDisplayImages_Previews: PreviewProvider {
    static var previews: some View {
        DownloadAndDisplayImages()
    }
}
