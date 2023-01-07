//
//  RadioButtonInListView.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 05/01/23.
//

import SwiftUI

struct RadioButtonInListView: View {
    let choices = ["Student", "Staff", "Faculty"]
    @State var choiceSelected: String?
    
    var body: some View {
        VStack {
            List(choices, id: \.self) { choice in
                HStack {
                    Text(choice)
                    Spacer()
                    let systemName = self.choiceSelected == choice
                    ? "circle.fill"
                    : "circle"
                    Image(systemName: systemName)
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    self.choiceSelected = choice
                }
            }
            
            if let choiceSelected = choiceSelected {
                Text("choice selected: \(choiceSelected)")
            }
        }
    }
}

struct RadioButtonInListView_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtonInListView()
    }
}
