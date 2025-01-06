//
//  OpenMultipleSheetsView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/6/25.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    var id: UUID {
        return UUID()
    }
    
    case addItem
    case showItem
}

struct OpenMultipleSheetsView: View {
    @State private var activeSheet: ActiveSheet?
    var body: some View {
        HStack {
            Button("Add Item") {
                activeSheet = .addItem
            }
            Button ("Show Item"){
                activeSheet = .showItem
            }
        }.sheet(item: $activeSheet) { item in
            switch item {
            case .addItem:
                AddItemSheetView()
            case .showItem:
                Text("Show Item")
            }
        }
        
    }
}

#Preview {
    OpenMultipleSheetsView()
}
