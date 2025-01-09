//
//  BlurView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI

struct BlurView: View {
    let catUrl = URL(string: "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg")!
    
    var body: some View {
        ZStack {
            AsyncImage(url: catUrl)
            
            HStack {
                Text("Cat")
            }.frame(maxWidth: .infinity, maxHeight: 300)
                .background(.ultraThinMaterial)
                .clipShape(Circle())
        }.padding()
    }
}

#Preview {
    BlurView()
}
