//
//  EnumSegmentedControlView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/7/25.
//

import SwiftUI

// CaseIterable: Allow to iterate
enum Roles: CaseIterable {
    case student
    case staff
    case faculty
}

extension Roles {
    var title: String {
        switch self {
        case .student:
            return "Student"
        case .staff:
            return "Staff"
        case .faculty:
            return "Faculty"
        }
    }
}

struct EnumSegmentedControlView: View {
    @State private var selection: Roles = .student
    var body: some View {
        VStack{
            Picker("Select", selection: $selection) {
                ForEach(Roles.allCases, id:\.self){ role in
                    Text(role.title)
                        .tag(role)
                }
            }.pickerStyle(.segmented)
            Text("Selected : \(selection.title)")
        }
    }
}

#Preview {
    EnumSegmentedControlView()
}
