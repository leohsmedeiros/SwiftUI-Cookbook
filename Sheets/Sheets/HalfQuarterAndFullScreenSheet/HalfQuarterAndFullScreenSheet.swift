//
//  HalfQuarterAndFullScreenSheet.swift
//  Sheets
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct HalfQuarterAndFullScreenSheet: View {
    @State private var sheetMode: SheetMode = .none
    
     var body: some View {
        ZStack {
            FlexibleSheet(sheetMode: $sheetMode) {
                VStack {
                    Text("Hello World")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.green)
            }
            
            Button("Show") {
                switch (sheetMode) {
                case .none: sheetMode = .quarter
                case .quarter: sheetMode = .half
                case .half: sheetMode = .full
                case .full: sheetMode = .none
                }
            }
        }
    }
}

struct HalfQuarterAndFullScreenSheet_Previews: PreviewProvider {
    static var previews: some View {
        HalfQuarterAndFullScreenSheet()
    }
}
