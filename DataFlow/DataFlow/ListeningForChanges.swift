//
//  ListeningForChanges.swift
//  DataFlow
//
//  Created by Leonardo Medeiros on 09/01/23.
//

import SwiftUI

struct ListeningForChanges: View {
    @State private var isLightOn: Bool = false
    
    var body: some View {
        Toggle("Light", isOn: $isLightOn)
            .fixedSize()
            .onChange(of: isLightOn) { newValue in
                if newValue {
                    print("Light is on")
                } else {
                    print("Light is off")
                }
            }
    }
}

struct ListeningForChanges_Previews: PreviewProvider {
    static var previews: some View {
        ListeningForChanges()
    }
}
