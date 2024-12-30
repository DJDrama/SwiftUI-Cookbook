//
//  AddItemView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct AddItemView: View {
    //@Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    @Binding var name: String
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter name", text: $name)
                HStack {
                    Spacer()
                    Button("Submit") {
                        //presentationMode.wrappedValue.dismiss()
                        dismiss()
                    }
                    Spacer()
                }
            }.navigationTitle("Add Item")
        }
    }
}

#Preview {
    AddItemView(name: .constant("DJ"))
}
