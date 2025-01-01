//
//  ShapesAndPathsView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

struct ShapesAndPathsView: View {
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
        
        RoundedRectangle(cornerRadius: 25.0, style: .continuous)
            .fill(.blue)
            .frame(width: 100, height: 100)
        
        Capsule()
            .fill(.green)
            .frame(width: 100, height: 50)
        
        Ellipse()
            .fill(.orange)
            .frame(width: 100, height: 50)
        
        Path { p in
            p.move(to: CGPoint(x: 100, y: 100))
            p.addLine(to: CGPoint(x: 100, y: 300))
            p.addLine(to: CGPoint(x: 300, y: 300))
            p.addLine(to: CGPoint(x: 100, y: 100))
        }.stroke()
        
    }
}

#Preview {
    ShapesAndPathsView()
}
