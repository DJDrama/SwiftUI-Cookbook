//
//  IntegrateCameraView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/7/25.
//

import SwiftUI

struct IntegrateCameraView: View {
    @State private var isShown: Bool = false
    @State private var image: Image?
    
    @State private var showImagePicker = false
    var body: some View {
        VStack {
            image?.resizable()
                .scaledToFit()
            
            Button("Open Camera") {
                showImagePicker = true
            }.padding()
                .background(.green)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        }.sheet(isPresented: $showImagePicker) {
            PhotoCaptureView(showImagePicker: $showImagePicker, image: $image)
        }
    }
}

#Preview {
    IntegrateCameraView()
}
