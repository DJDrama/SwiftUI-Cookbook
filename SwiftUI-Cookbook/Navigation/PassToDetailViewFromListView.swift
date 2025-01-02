//
//  PassToDetailViewFromListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct PassToDetailViewFromListView: View {
    let customers = ["Alex", "Mary", "John", "Jerry", "Steven"]
    
    var body: some View {
        NavigationView {
            List(customers, id:\.self){ customer in
                NavigationLink {
                    DetailCustomerView(customer: customer)
                } label: {
                    Text(customer)
                }
            }.navigationTitle("Customers")
        }
    }
}

struct DetailCustomerView: View {
    let customer: String
    var body: some View {
        Text(customer)
    }
}

#Preview {
    PassToDetailViewFromListView()
}
