//
//  StickyHeaderGridView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/26/24.
//

import SwiftUI

struct StickyHeaderGridView: View {
    let columns = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    private func headerView(_ section: Int) -> some View {
        Text("Section \(section)")
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.blue)
            .foregroundColor(.white)
    }
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders], content: {
                    ForEach(1..<11) { section in
                        Section(header: headerView(section), content: {
                            ForEach(1..<Int.random(in: 5...20)){ index in
                                Text("Item \(index)")
                                    .padding()
                                    .background(.green)
                                    .foregroundColor(.white)
                            }
                        })
                    }
                })
            }.navigationTitle("Pinned Views Demo")
        }
    }
}

#Preview {
    StickyHeaderGridView()
}
