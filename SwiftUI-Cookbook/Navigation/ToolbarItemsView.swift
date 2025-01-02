//
//  AddBarItemsToNavigationBarView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct ToolbarItemsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World!")
            }.navigationTitle("Customers")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {}, label: {
                            Image(systemName: "house")
                        })
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {}, label: {
                            Image(systemName: "bolt")
                        }).buttonStyle(PlainButtonStyle())
                    }
                }
        }
    }
}

#Preview {
    ToolbarItemsView()
}
