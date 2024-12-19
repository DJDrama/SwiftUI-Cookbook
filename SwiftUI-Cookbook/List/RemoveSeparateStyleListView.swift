//
//  RemoveSeparateStyleListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/19/24.
//

import SwiftUI

struct RemoveSeparateStyleListView: View {
    var body: some View {
        NavigationView {
            List(1...20, id: \.self) { index in
                HStack {
                    Text("\(index)")
                    Spacer()
                }.listRowSeparator(.hidden) // Hides the list row separator
            }.listStyle(.plain)
        }
    }
}

#Preview {
    RemoveSeparateStyleListView()
}
