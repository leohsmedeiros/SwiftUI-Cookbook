//
//  Counter.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 08/01/23.
//

import Foundation

class Counter: ObservableObject {
    @Published var value: Int = 0
    
    func increment() {
        // just to make sure that we are in the main Thread
        DispatchQueue.main.async {
            self.value += 1
        }
    }
}
