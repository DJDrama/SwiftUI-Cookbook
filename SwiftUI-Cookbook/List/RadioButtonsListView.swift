//
//  RadioButtonsListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/23/24.
//

import SwiftUI

struct RadioButtonsListView: View {
    let choices = ["Student", "Staff", "Faculty"]
    @State private var selectedChoice: String?
    
    var body: some View {
        List(choices, id:\.self) {choice in
            HStack{
                Text(choice)
                Spacer()
                Image(systemName: selectedChoice == choice ? "circle.inset.filled" : "circle").font(.title)
                    .foregroundColor(.blue)
            }
            .contentShape(Rectangle())
            .onTapGesture {
                selectedChoice = choice
            }
        }
    }
}

#Preview {
    RadioButtonsListView()
}
