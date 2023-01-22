//
//  WebService.swift
//  SwiftUIMVVM
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case badRequest
}

class WebService {
    func fetchPosts(completion: @escaping (Result<[Post], NetworkError>) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            completion(.failure(.badURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data, error == nil else {
                completion(.failure(.badRequest))
                return
            }
            
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            
            completion(.success(posts ?? []))
        }.resume()
    }
}
