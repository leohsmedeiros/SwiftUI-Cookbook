//
//  ContentView.swift
//  SwiftUIMVVM
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import SwiftUI

struct ContentView: View {
    // whenever something changes on PostListViewModel (since it is an ObservableObject) it will update the screen
    @StateObject private var postListVM = PostListViewModel()
    
    var body: some View {
        List(postListVM.posts, id: \.id) { post in
            VStack(alignment: .leading, spacing: 10) {
                Text(post.title)
                    .font(.headline)
                Text(post.body)
            }
        }.onAppear {
            postListVM.populatePosts()
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
