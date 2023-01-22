//
//  Post.swift
//  SwiftUIMVVM
//
//  Created by Leonardo Medeiros on 22/01/23.
//

import Foundation

struct Post: Decodable {
    let id: Int
    let title: String
    let body: String
}
