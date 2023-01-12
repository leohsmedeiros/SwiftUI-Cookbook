//
//  MultipleSheets.swift
//  Sheets
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    var id: UUID {
        return UUID()
    }
    
    case addItem
    case showItem
}

struct MultipleSheets: View {
    @State private var activeSheet: ActiveSheet?
    
    var body: some View {
        HStack {
            Button("Add Item") {
                activeSheet = .addItem
            }
            Button("Show Item") {
                activeSheet = .showItem
            }
        }
        .sheet(item: $activeSheet) { sheet in
            switch (sheet) {
            case .addItem:
                Text("Add Item")
            case .showItem:
                Text("Show Item")
            }
        }
    }
}

struct MultipleSheets_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheets()
    }
}
