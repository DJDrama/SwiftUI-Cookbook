//
//  DragView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/27/24.
//

import SwiftUI

struct DragView: View {
    @State private var position = CGPoint(x: 100, y: 100)
    @State private var isDanger = false
    let bounds = UIScreen.main.bounds
    var body: some View {
        VStack {
            Image("cat")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .zIndex(1.0)
                .position(position)
                .gesture(DragGesture().onChanged({ value in
                    position = value.location
                    if position.y > bounds.height/2{
                        isDanger = true
                    } else {
                        isDanger = false
                    }
                }).onEnded({ value in
                    
                }))
            
            HStack {
                Text("Danger")
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(isDanger ? .red : .green)
        }
    }
}

#Preview {
    DragView()
}
