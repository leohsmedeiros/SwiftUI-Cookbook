//
//  FlexibleSheet.swift
//  Sheets
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

enum SheetMode {
    case none // not been displayed
    case quarter
    case half
    case full
}
struct FlexibleSheet<Content: View>: View {
    let content: () -> Content
    var sheetMode: Binding<SheetMode>
    
    init(sheetMode: Binding<SheetMode>, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.sheetMode = sheetMode
    }
    
    private func calculateOffSet() -> CGFloat {
        switch(sheetMode.wrappedValue) {
        case .none:
            return UIScreen.main.bounds.height
        case .quarter:
            return UIScreen.main.bounds.height - 200
        case .half:
            return UIScreen.main.bounds.height / 2
        case .full:
            return 0
        }
    }
    
    var body: some View {
        var offset = calculateOffSet()
        self.content()
            .offset(y: offset)
            .animation(.default, value: offset)
    }
}

struct FlexibleSheet_Previews: PreviewProvider {
    static var previews: some View {
        FlexibleSheet(sheetMode: .constant(.full)) {
            VStack {
                Text("Hello World")
            }
        }
    }
}
