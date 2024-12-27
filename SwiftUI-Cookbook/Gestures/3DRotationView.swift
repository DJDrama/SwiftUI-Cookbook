//
//  3DRotationView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/27/24.
//

import SwiftUI

struct _DRotationView: View {
    @State private var flipped = false
    var body: some View {
        HStack {
            
        }.frame(maxWidth: 300, maxHeight: 150)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .rotation3DEffect(
                flipped ? Angle(degrees: 180) : .zero,
                axis: (x: 1.0, y:0.0, z:0.0)
            )
            .animation(.default, value: UUID())
            .onTapGesture {
                flipped.toggle()
            }
    }
}

#Preview {
    _DRotationView()
}
