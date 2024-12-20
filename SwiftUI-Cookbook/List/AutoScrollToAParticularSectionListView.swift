//
//  AutoScrollToAParticularSectionListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/20/24.
//

import SwiftUI

struct AutoScrollToAParticularSectionListView: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                Button("Scroll to index 100") {
                    withAnimation { // Animate
                        proxy.scrollTo(110) // move to id
                    }
                }
                List(1...500, id:\.self) { index in
                    Text("\(index)")
                        .id(index) // set id (very important!)
                }
            }
        }
    }
}

#Preview {
    AutoScrollToAParticularSectionListView()
}
