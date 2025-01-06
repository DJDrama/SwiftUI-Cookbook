//
//  AddItemView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/6/25.
//

import SwiftUI

struct AddItemSheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack {
                Text("AddItem View")
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.green)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Close"){
                            dismiss()
                        }
                    }
                }
                .navigationTitle("Add Item")
        }
    }
}

#Preview {
    AddItemSheetView()
}
