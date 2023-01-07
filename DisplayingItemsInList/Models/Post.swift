//
//  Post.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let title: String
    let comments: [Comment]
}
