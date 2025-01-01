//
//  BlurEffectsView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    typealias UIViewType = UIVisualEffectView
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView()
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = effect
    }
}

struct BlurEffectsView: View {
    var body: some View {
        ZStack{
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                //.blur(radius: 10.0) // one way
            
            // another way
//            VisualEffectView(effect: UIBlurEffect(style: .dark))
//                .ignoresSafeArea()
//            
            Text("Cat")
                .font(.largeTitle)
               // .foregroundStyle(.white)
                .frame(maxWidth: 300, maxHeight: 300)
                .background(.thinMaterial)
        }
    }
}

#Preview {
    BlurEffectsView()
}
