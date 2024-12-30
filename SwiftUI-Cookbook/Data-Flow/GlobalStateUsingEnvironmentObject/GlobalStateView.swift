//
//  GlobalStateView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct GlobalStateView: View {
    // dynamically injected from App struct
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(counter.value)")
                .font(.largeTitle)
            
            GreenCounterView()
            RedCounterView()
        }
    }
}

#Preview {
    GlobalStateView()
        .environmentObject(Counter())
}
