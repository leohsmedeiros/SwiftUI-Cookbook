//
//  SegmentedControlBasedOnEnum.swift
//  Pickers
//
//  Created by Leonardo Medeiros on 12/01/23.
//

import SwiftUI

enum Roles: CaseIterable {
    case student
    case staff
    case faculty
}

extension Roles {
    var title: String {
        switch self {
            case .student: return "Student"
            case .staff: return "Staff"
            case .faculty: return "Faculty"
        }
    }
}

struct SegmentedControlBasedOnEnum: View {
    @State private var selectedRole: Roles = .student
    
    var body: some View {
        VStack {
            Picker("Select", selection: $selectedRole) {
                ForEach(Roles.allCases, id: \.self) { role in
                    Text(role.title).tag(role)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text(selectedRole.title)
        }
    }
}

struct SegmentedControlBasedOnEnum_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlBasedOnEnum()
    }
}
