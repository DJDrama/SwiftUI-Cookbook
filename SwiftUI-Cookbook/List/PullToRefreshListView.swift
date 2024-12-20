//
//  PullToRefreshListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/20/24.
//

import SwiftUI

struct PullToRefreshListView: View {
    @State private var refreshDates: [Date] = []
    var body: some View {
        NavigationView {
            List(refreshDates, id:\.self) { date in
                Text("\(date)")
            }.listStyle(.plain)
                .refreshable {
                    // after 2 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        refreshDates.append(Date())
                    }
                }
                .navigationTitle("Pull to Refresh")
        }
    }
}

#Preview {
    PullToRefreshListView()
}
