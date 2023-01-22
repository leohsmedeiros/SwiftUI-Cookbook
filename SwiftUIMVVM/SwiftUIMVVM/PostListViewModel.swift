//
//  PostListViewModel.swift
//  SwiftUIMVVM
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import Foundation

// the object can be observed
class PostListViewModel: ObservableObject {
    // published properties are going to make sure that we are going to notify the UI that an event has ocurred, whenever we set this property, and the UI can update itself
    @Published var posts: [PostViewModel] = [PostViewModel]()
    
    func populatePosts() {
        WebService().fetchPosts { (result) in
            switch result {
                case .success(let posts):
                    // just to make sure that we're assigning it on the main thread
                    DispatchQueue.main.async {
                        self.posts = posts.map(PostViewModel.init)
                    }
                case .failure(let error):
                    print (error)
            }
        }
    }
}

struct PostViewModel {
    let post: Post
    
    var id: Int {
        post.id
    }
    
    var title: String {
        post.title
    }
    
    var body: String {
        post.body
    }
}
