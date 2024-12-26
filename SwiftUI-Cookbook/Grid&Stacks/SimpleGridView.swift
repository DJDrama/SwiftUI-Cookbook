//
//  SimpleGridView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/26/24.
//

import SwiftUI

struct SimpleGridView: View {
    let columns = [GridItem(.fixed(100)), GridItem(.fixed(100)), GridItem(.fixed(100))]
    
    let flexibleColumns = [GridItem(.flexible(minimum: 50)), GridItem(.flexible(minimum: 50)), GridItem(.flexible(minimum: 50)), GridItem(.flexible(minimum: 50))]
    
    let adaptiveColumns = [GridItem(.adaptive(minimum: 100)),GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        ScrollView {
            // simple
            LazyVGrid(columns: columns, content: {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                    }
                }
            })
            // flexible
            LazyVGrid(columns: flexibleColumns, content: {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                    }
                }
            })
            // adaptive
            LazyVGrid(columns: adaptiveColumns, content: {
                ForEach(1...20, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                    }
                }
            })
        }
    }
}

#Preview {
    SimpleGridView()
}
