//
//  PaginationView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct PaginationView: View {
    var body: some View {
        TabView{
            Text("One")
            Text("Two")
            Text("Three")
        }.tabViewStyle(PageTabViewStyle()) // like a viewpager
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) // indicator
    }
}

#Preview {
    PaginationView()
}
