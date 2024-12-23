//
//  SelectMultipleItemsListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/23/24.
//

import SwiftUI

struct Customer: Identifiable {
    let id = UUID()
    let name: String
}

struct SelectMultipleItemsListView: View {
    @State private var customers: [Customer] = [
        Customer(name: "DJ"),
        Customer(name: "Dongster"),
        Customer(name: "Alex"),
        Customer(name: "Mary"),
        Customer(name: "Steven"),
        Customer(name: "Tom"),
        Customer(name: "Paul"),
    ]
    @State private var selectedCustomerIds = Set<UUID>()
    
    var body: some View {
        NavigationView{
            List(customers, selection: $selectedCustomerIds){ customer in
                Text("\(customer.name)")
            }
            .listStyle(.plain)
            .toolbar(content: {
                EditButton()
            })
            .navigationTitle("Selected : \(selectedCustomerIds.count)")
            
        }
    }
}

#Preview {
    SelectMultipleItemsListView()
}
