//
//  PhotoCaptureView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/7/25.
//

import SwiftUI

struct PhotoCaptureView: View {
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

#Preview {
    PhotoCaptureView(showImagePicker: .constant(true), image: .constant(Image("cat")))
}
