//
//  OptionalBindingsView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

struct OptionalBindingsView: View {
    let name: String? = "John Doe"
    
    var body: some View {
        VStack {
            Text(name!) // Force unwrapping : NOT RECOMMENDED
            
            // Safe unwrapping methods
            
            Text(name ?? "")
            
            name.map {
                Text($0)
            }
            
            if let name = name {
                Text(name)
            }
        }
    }
}

#Preview {
    OptionalBindingsView()
}
