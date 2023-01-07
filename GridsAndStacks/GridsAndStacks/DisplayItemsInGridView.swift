//
//  DisplayItemsInGridView.swift
//  GridsAndStacks
//
//  Created by Leonardo Medeiros on 07/01/23.
//

import SwiftUI

struct DisplayItemsInGridView: View {
    /*
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
     */

    /*
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
     */
    
    let columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100))
    ]

    var body: some View {
        LazyVGrid(columns: columns, content: {
            ForEach(1...20, id: \.self) { index in
                HStack {
                    Text("Item \(index)")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                }
            }
        })
    }
}

struct DisplayItemsInGridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DisplayItemsInGridView()
            DisplayItemsInGridView().previewInterfaceOrientation(.landscapeRight)
        }
    }
}
