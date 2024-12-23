//
//  CheckBoxListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/23/24.
//

import SwiftUI

struct CheckBoxListView: View {
    let fruits = ["Apple", "Orange", "Banana", "Cherry", "Coconut", "Kiwi"]
    
    @State private var checkedItems: [String] = []
    
    var body: some View {
        VStack {
            List(fruits, id: \.self) { fruit in
                HStack{
                    Text(fruit)
                    Spacer()
                    ZStack{
                        if checkedItems.contains(fruit) {
                            Image(systemName: "checkmark.square.fill")
                                .font(.largeTitle)
                        }else {
                            Image(systemName: "square")
                                .font(.largeTitle)
                        }
                        
                    }.foregroundColor(.blue)
                        .onTapGesture {
                            if checkedItems.contains(fruit) {
                                checkedItems = checkedItems.filter { $0 != fruit}
                            } else {
                                checkedItems.append(fruit)
                            }
                            
                        }
                }
            }
            
            Text("Selected fruits")
            List(checkedItems, id:\.self) { item in
                Text("\(item)")
            }
        }
    }
}

#Preview {
    CheckBoxListView()
}
