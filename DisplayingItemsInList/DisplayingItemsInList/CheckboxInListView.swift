//
//  CheckboxInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 05/01/23.
//

import SwiftUI

struct CheckboxInListView: View {
    @State private var selectedFruits: [String] = []
    let fruits = ["Apple", "Orange", "Banana", "Cherry", "Coconut", "Kiwi"]
    
    var body: some View {
        VStack {
            List(fruits, id:\.self) { fruit in
                HStack {
                    Text(fruit)
                    Spacer()
                    ZStack {
                        let systemName = selectedFruits.contains(fruit)
                        ? "checkmark.square"
                        : "square"
                        Image(systemName: systemName)
                    }
                    .foregroundColor(.blue)
                    .onTapGesture {
                        if selectedFruits.contains(fruit) {
                            selectedFruits.removeAll{ selectedFruit in
                                return selectedFruit == fruit
                            }
                        } else {
                            selectedFruits.append(fruit)
                        }
                    }
                }
            }
            
            Text("Selected fruits")
            
            List(selectedFruits, id:\.self) { selectedFruit in
                Text(selectedFruit)
            }
        }
    }
}

struct CheckboxInListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxInListView()
    }
}
