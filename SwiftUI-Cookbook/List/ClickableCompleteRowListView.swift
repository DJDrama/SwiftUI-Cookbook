//
//  ClickableCompleteRowListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/20/24.
//

import SwiftUI

struct ClickableCompleteRowListView: View {
    @State private var selectedIndex: Int?
    var body: some View {
        VStack {
            List {
                ForEach(1...10, id:\.self) { index in
                    HStack {
                        Text("\(index)")
                        Spacer()
                    }
                    .contentShape(Rectangle()) // Key point!
                    .onTapGesture {
                        selectedIndex = index
                    }
                }
            }
            selectedIndex.map {
                Text("SelectedIndex: \($0)")
                    .font(.title)
                    
            }
        }
    }
}

#Preview {
    ClickableCompleteRowListView()
}
