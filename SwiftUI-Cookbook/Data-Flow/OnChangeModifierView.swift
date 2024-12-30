//
//  OnChangeModifierView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct OnChangeModifierView: View {
    @State private var isLightOn = false
    var body: some View {
        Toggle("Light", isOn: $isLightOn)
            .onChange(of: isLightOn, { oldValue, newValue in
                print("\(oldValue), \(newValue)")
            })
            .fixedSize()
        
        Text(isLightOn ? "Light is On!" : "Light is Off!")
    }
}

#Preview {
    OnChangeModifierView()
}
