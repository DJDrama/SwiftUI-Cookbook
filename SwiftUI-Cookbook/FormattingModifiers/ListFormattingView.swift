//
//  ListFormattingView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/27/24.
//

import SwiftUI

struct ListFormattingView: View {
    let names = ["Alex", "Mary", "Steven", "Jerry", "Krammer"]
    let numbers = [1000, 5000, 20000]
    var body: some View {
        VStack {
            Text(names, format: .list(type: .and))
            Text(names, format: .list(type: .or))
            Text(names, format: .list(type: .and, width: .standard))
            Text(names, format: .list(type: .and, width: .short))
            Text(names, format: .list(type: .and, width: .narrow))
            
            Text(numbers, format: .list(memberStyle: .currency(code: "USD"), type: .and))
            Text(numbers, format: .list(memberStyle: .currency(code: "KRW"), type: .or))
            Text(numbers, format: .list(memberStyle: .percent, type: .and))
            Text(numbers, format: .list(memberStyle: .percent, type: .or))
            
        }.padding()
    }
}

#Preview {
    ListFormattingView()
}
