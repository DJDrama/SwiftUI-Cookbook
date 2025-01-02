//
//  NavigationBasedOnButtonClickView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Detail View")
    }
}

struct NavigationLinkView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Go to detail view")
                }
            }
        }
    }
}

#Preview {
    NavigationLinkView()
}
