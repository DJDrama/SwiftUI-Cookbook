//
//  InfiniteScrollableListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/23/24.
//

import SwiftUI

struct InfiniteScrollableListView: View {
    @State private var numbers: [Int] = []
    @State private var currentPage: Int = 1
    
    private func populateData(page: Int) {
        if page == 1 {
            numbers.removeAll()
        }
        guard let url = URL(string: "https://island-bramble.glitch.me/data?page=\(page)") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data, error == nil else {
                return
            }
            let numbers = try? JSONDecoder().decode([Int].self, from: data)
            DispatchQueue.main.async {
                self.numbers.append(contentsOf: numbers ?? [])
            }
        }.resume()
    }
    
    private func shouldLoadData(id: Int) -> Bool {
        return id == numbers.count - 2
    }
    
    var body: some View {
        List(numbers, id:\.self){number in
            Text("\(number)")
                .onAppear(perform: {
                    if shouldLoadData(id: number) {
                        currentPage+=1
                        populateData(page: currentPage)
                    }
                })
        }.onAppear{
            populateData(page: currentPage)
        }
    }
}

#Preview {
    InfiniteScrollableListView()
}
