//
//  MagnifyView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/27/24.
//

import SwiftUI

struct MagnifyView: View {
    @GestureState private var zoomFactor: CGFloat = 1.0
    @State private var currentScale: CGFloat = 1.0
    var magnification: some Gesture {
        return MagnificationGesture()
            .updating($zoomFactor) { value, scale, transaction in
                scale = value // new zoom factor
            }
            .onEnded { value in
                currentScale *= value
            }
    }
    var body: some View {
        Image("cat")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(currentScale * zoomFactor)
            .gesture(magnification)
    }
}

#Preview {
    MagnifyView()
}
