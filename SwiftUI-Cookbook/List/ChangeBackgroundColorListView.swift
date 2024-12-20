//
//  ChangeBackgroundColorListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/20/24.
//

import SwiftUI

struct ChangeBackgroundColorListView: View {
    var body: some View {
        // 1. List Example
        List {
            ForEach(1...5, id: \.self) { index in
                HStack{
                    Text("\(index)")
                }.listRowBackground(Color.green)
            }
        }
        .listStyle(.plain)
        .background(.yellow)
        
        // 2. LazyVStack Example
        ScrollView {
            LazyVStack {
                ForEach(1...5, id: \.self) { index in
                    HStack{
                        VStack(alignment: .leading) {
                            Text("\(index)")
                            Divider()
                        }
                        Spacer()
                    }.listRowBackground(Color.green)
                }
            }
            .padding()
            .background(.blue)
        }.background(.red)
            
    }
}

#Preview {
    ChangeBackgroundColorListView()
}
