//
//  OpenCloseSheetView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/6/25.
//

import SwiftUI

struct OpenCloseSheetView: View {
    @State private var isPresented = false
    @State private var isDismissed: Bool = false
    var body: some View {
        VStack{
            Button("Add Item") {
                isPresented = true
            }
            Text(isDismissed ? "Dismissed!" : "")
        }.sheet(isPresented: $isPresented,
                onDismiss: {
            isDismissed = true
        }, content: { // fullScreenCover : Full Screen
            AddItemSheetView()
        })
        
    }
}

#Preview {
    OpenCloseSheetView()
}
