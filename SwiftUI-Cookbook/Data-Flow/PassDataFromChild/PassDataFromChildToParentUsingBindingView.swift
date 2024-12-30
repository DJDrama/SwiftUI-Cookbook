//
//  PassDataFromChildToParentUsingBindingView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct PassDataFromChildToParentUsingBindingView: View {
    @State private var isPresented = false
    @State private var name: String = ""
    var body: some View {
        VStack(spacing: 10){
            Text(name)
                .font(.largeTitle)
            Button("Add Item"){
                name = ""
                isPresented = true
            }
        }.sheet(isPresented: $isPresented, content: {
            AddItemView(name: $name)
        })
        
        
    }
}

#Preview {
    PassDataFromChildToParentUsingBindingView()
}
