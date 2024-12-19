//
//  ListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/19/24.
//

import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
}

struct ListView: View {
    let friends = [
        Friend(name: "dj"),
        Friend(name: "dongster"),
        Friend(name: "Steve"),
        Friend(name: "Steve")
    ]
    var body: some View {
        List(friends) { friend in
            Text(friend.name)
        }
        
        List(friends.indices){ index in
            HStack {
                Text("\(index+1)")
                Text(friends[index].name)
            }
        }
    }
}

#Preview {
    ListView()
}
