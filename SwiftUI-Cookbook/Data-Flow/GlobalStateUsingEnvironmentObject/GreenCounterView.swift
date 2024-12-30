//
//  GreenCounterView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct GreenCounterView: View {
    @EnvironmentObject var counter: Counter
    var body: some View {
        Button("Increment") {
            counter.increment()
        }.padding()
            .background(.green)
            .foregroundColor(.white)
    }
}

#Preview {
    GreenCounterView()
}
