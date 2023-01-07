//
//  NumberListViewModel.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 05/01/23.
//

import SwiftUI

class NumberListViewModel: ObservableObject {
    @Published var numbers: [Int] = []
    
    func populateDate(page: Int) {
        guard let url = URL(string: "https://island-bramble.glitch.me/data?page=\(page)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let numbers = try? JSONDecoder().decode([Int].self, from: data)
            DispatchQueue.main.async {
                self.numbers.append(contentsOf: numbers ?? [])
            }
        }.resume()
    }
    
    func shouldLoadData(id: Int) -> Bool {
        return id == numbers.count - 2
    }
}
