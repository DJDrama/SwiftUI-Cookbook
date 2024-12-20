//
//  SwipeActionListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/20/24.
//

import SwiftUI

struct Site: Identifiable {
    let id = UUID()
    let name: String
}

func getSites() -> [Site] {
    return [
        Site(name: "Denver"),
        Site(name: "Seoul"),
        Site(name: "Tokyo"),
        Site(name: "Beijing"),
        Site(name: "New York"),
    ]
}

struct SwipeActionListView: View {
    @State private var sites: [Site] = getSites()
    var body: some View {
        NavigationView {
            List(sites) { site in
                HStack {
                    Text(site.name)
                        .font(.title)
                        .padding(.vertical)
                }.swipeActions(edge: .leading) { // leading: left to right
                    Button {
                        
                    } label: {
                        Label("Heart", systemImage: "heart.circle")
                    }.tint(.red)
                }.swipeActions(edge: .trailing) { // trailing: right to left
                    Button {
                        
                    } label: {
                        Label("Archive", systemImage: "archivebox.circle.fill")
                    }.tint(.teal)
                    // Multiple items
                    Button {
                        
                    } label: {
                        Label("Heart", systemImage: "heart.circle")
                    }.tint(.red)
                    
                }
            }.listStyle(.plain)
                .navigationTitle("Sites")
        }
    }
}

#Preview {
    SwipeActionListView()
}
