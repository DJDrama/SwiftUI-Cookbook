//
//  AppStorageView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("isOn") private var isOn = false // App Storage
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Dark Mode")
                    .foregroundStyle(.white)
            }.fixedSize()
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(isOn ? .black : .blue)
    }
}

#Preview {
    AppStorageView()
}
