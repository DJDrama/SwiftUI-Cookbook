//
//  SearchableView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI

struct SearchableView: View {
    let names = ["Alex", "John", "Jack", "Mary", "Jerry", "Dj", "Steve"]
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            CustomerListView(customers: names)
        }.searchable(text: $text) {
            ForEach(names.filter { $0.hasPrefix(text)}, id:\.self) { name in
                Text(name)
            }
        }.onSubmit(of: .search) {
            // perform the search
        }
    }
}
struct CustomerListView: View {
    let customers: [String]
    
    var body: some View {
        List(customers, id:\.self) { customer in
            Text(customer)
        }
    }
}

#Preview {
    SearchableView()
}
