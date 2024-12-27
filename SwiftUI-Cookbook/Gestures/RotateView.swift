//
//  RotateView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/27/24.
//

import SwiftUI

struct RotateView: View {
    @State private var rotateValue = 0.0
    var body: some View {
        VStack {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(rotateValue))
                .padding(.top, 50)
                .animation(.default, value: UUID())
            Spacer()
            Button("Rotate"){
                rotateValue += 90
            }
        }.padding()
    }
}

#Preview {
    RotateView()
}
