//
//  PullToRefreshView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI

struct PullToRefreshView: View {
    @StateObject private var viewModel = PullToRefreshViewModel()
    var body: some View {
        List(viewModel.customers, id:\.self) { customer in
                Text(customer)
        }.onAppear {
            viewModel.fetch()
        }.refreshable {
            viewModel.fetch()
        }
    }
}

class PullToRefreshViewModel: ObservableObject {
    @Published var customers: [String] = []
    
    func fetch() {
        let letters = "abcdefghi"
        var names: [String] = []
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            for _ in 1...20 {
                let randomName = String(
                    (0...letters.count).map{_ in
                        letters.randomElement()!
                    }
                )
                names.append(randomName)
            }
            self.customers = names
        }
    }
}

#Preview {
    PullToRefreshView()
}
