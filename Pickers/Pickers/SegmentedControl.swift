//
//  SegmentedControl.swift
//  Pickers
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

struct SegmentedControl: View {
    @State private var selection: String = "Student"
    
    var body: some View {
        VStack {
            Picker("Select", selection: $selection) {
                Text("Student").tag("Student")
                Text("Staff").tag("Staff")
                Text("Faculty").tag("Faculty")
            }.pickerStyle(SegmentedPickerStyle())
            
            Text(selection)
        }
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
    }
}
