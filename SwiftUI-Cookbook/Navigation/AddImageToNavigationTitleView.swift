//
//  AddImageToNavigationTitleView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct AddImageToNavigationTitleView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Plants")
            }.navigationTitle("Plants")
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image(systemName: "leaf.fill")
                            .foregroundStyle(.green)
                    }
                }
        }
    }
}

#Preview {
    AddImageToNavigationTitleView()
}
