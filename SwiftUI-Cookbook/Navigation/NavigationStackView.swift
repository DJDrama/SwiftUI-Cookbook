//
//  NavigationStackView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct NavigationStackView: View {
    let names = ["Alex", "Steven", "John", "Mary"]
    
    var body: some View {
        NavigationStack {
            VStack {
                // 1. simple
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text("Go to destination!")
                }
                
                // 2. dynamic using with navigationDestination
                NavigationLink("Go to destination!!", value: 99)
            }
            .navigationDestination(for: Int.self, destination: { value in
                Text("\(value)") // 99
            })
            .padding()
            
            // 3. using List with navigationDestination
            List(names, id:\.self) { name in
                NavigationLink(name, value: name)
            }
            .navigationDestination(for: String.self) { value in
                Text(value)
            }
        }
    }
}

#Preview {
    NavigationStackView()
}
