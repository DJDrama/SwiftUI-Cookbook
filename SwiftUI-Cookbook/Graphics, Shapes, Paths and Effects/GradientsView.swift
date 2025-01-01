//
//  Gradients.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        VStack{
            Text("Hello, World!")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AngularGradient(colors: [.red, .blue, .yellow, .green, .orange, .pink], center: .center))
            
//            .background(
//                RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 1, endRadius: 200))
        
//        .background(
//            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
//        )
            
    }
}

#Preview {
    GradientsView()
}
