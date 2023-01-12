//
//  SingleColumnPickerView.swift
//  Pickers
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct SingleColumnPickerView: View {
    @State private var selectedGenre: String = ""
    let genres = ["Fiction", "Horror", "Kids", "Romance"]
    
    var body: some View {
        VStack {
            Picker("Select Genre", selection: $selectedGenre) {
                ForEach(genres, id: \.self) { genre in
                    Text(genre)
                }
            }
            .pickerStyle(.wheel)
            
            Text(selectedGenre)
        }
    }
}

struct SingleColumnPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SingleColumnPickerView()
    }
}
