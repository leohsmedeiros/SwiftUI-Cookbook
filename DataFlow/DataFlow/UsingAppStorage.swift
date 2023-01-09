//
//  UsingAppStorage.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct UsingAppStorage: View {
    // Any time the user changes the isOn property that value is going to get stored in the user defaults with the key "isOn"
    @AppStorage("isOn") private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Dark Mode")
                    .foregroundColor(.white)
            }
            .fixedSize()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? .black : .blue)
    }
}

struct UsingAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        UsingAppStorage()
    }
}
