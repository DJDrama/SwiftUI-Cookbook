//
//  AsyncImageView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI

struct AsyncImageView: View {
    let catUrl = URL(string: "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg")!
    
    var body: some View {
        AsyncImage(url: catUrl) { phase in
            if let image = phase.image {
                image.resizable().aspectRatio(contentMode: .fit)
            } else if phase.error != nil { // when error
                Image(systemName: "exclamationmark.circle")
            } else { // when loading
                ProgressView()
            }
        }
    }
}

#Preview {
    AsyncImageView()
}
