//
//  GrouppedListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/19/24.
//

import SwiftUI
struct Post: Identifiable {
    let id = UUID()
    let title: String
    let comments: [Comment]
}
struct Comment: Identifiable {
    let id = UUID()
    let title: String
}
struct GroupedListView: View {
    let posts = [
        Post(title: "Post #1", comments: [
            Comment(title: "Comment 1 for Post 1"),
            Comment(title: "Comment 2 for Post 1"),
        ]),
        Post(title: "Post #2", comments: [
            Comment(title: "Comment 1 for Post 2"),
            Comment(title: "Comment 2 for Post 2"),
        ])
    ]
    var body: some View {
        List {
            ForEach(posts){post in
                Section(header: Text(post.title)){
                    ForEach(post.comments){comment in
                        Text(comment.title)
                    }
                }
            }
        }.listStyle(GroupedListStyle()) // GroupedListStyle
    }
}

#Preview {
    GroupedListView()
}
