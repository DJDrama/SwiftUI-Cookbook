//
//  HeroAnimationUsingMatchedGeometryEffectGridView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/26/24.
//

import SwiftUI

struct HeroAnimationUsingMatchedGeometryEffectGridView: View {
    @Namespace var namespace
    @State private var selectedSymbol: String?
    let symbols = [
        "keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]
    
    var body: some View {
        VStack {
            if selectedSymbol == nil {
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())], content: {
                    ForEach(symbols, id:\.self){ symbol in
                        Image(systemName: symbol)
                            .font(.system(size: 40))
                            .padding()
                            .matchedGeometryEffect(id: symbol, in: namespace)
                            .onTapGesture {
                                selectedSymbol = symbol
                            }
                    }
                }).animation(.spring())
            } else if let selectedSymbol = selectedSymbol {
                Image(systemName: selectedSymbol)
                    .matchedGeometryEffect(id: selectedSymbol, in: namespace)
                    .font(.system(size:70))
                    .onTapGesture {
                        withAnimation {
                            self.selectedSymbol = nil
                        }
                    }.animation(.spring())
                   
                Spacer()
            }
        }
    }
}

#Preview {
    HeroAnimationUsingMatchedGeometryEffectGridView()
}
