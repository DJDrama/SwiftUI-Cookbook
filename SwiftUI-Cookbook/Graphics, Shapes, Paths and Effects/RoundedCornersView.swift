//
//  RoundedCornersView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

struct RoundedCornersView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Hello World")
            }.padding().background(.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous)) // rounded corners
            
            Button("Click me"){
                
            }.padding()
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12,  style: .continuous))// rounded corners
            
        }
    }
}

#Preview {
    RoundedCornersView()
}
