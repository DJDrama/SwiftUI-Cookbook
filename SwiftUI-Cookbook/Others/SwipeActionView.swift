//
//  SwiftActionView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI

struct SwipeActionView: View {
    var body: some View {
        List{
            ForEach(1...20, id:\.self) { index in
                Text("\(index)").swipeActions(edge: .leading) {
                    Button {
                        
                    } label: {
                        if index % 2 == 0 {
                            Label("Read", systemImage: "envelope.open")
                        }else {
                            Label("Unread", systemImage: "envelope.badge")
                        }
                    }
                }.swipeActions(edge: .trailing) {
                    Button(role: .destructive) {
                        
                    } label: {
                        Label("Archive", systemImage: "archivebox.circle.fill")
                    }
                    Button {
                        
                    } label: {
                        Label("Flag", systemImage: "archivebox.circle.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    SwipeActionView()
}
