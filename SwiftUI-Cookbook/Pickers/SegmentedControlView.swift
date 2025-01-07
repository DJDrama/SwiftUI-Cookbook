//
//  SegmentedControlView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/7/25.
//

import SwiftUI

struct SegmentedControlView: View {
    @State private var selection: String = "Student"
    var body: some View {
        VStack {
            Picker("Select", selection: $selection) {
                // tag must match the selection value!
                Text("Student").tag("Student")
                Text("Staff").tag("Staff")
                Text("Faculty").tag("Faculty")
            }.pickerStyle(.segmented)
            
            Text(selection)
        }
    }
}

#Preview {
    SegmentedControlView()
}
