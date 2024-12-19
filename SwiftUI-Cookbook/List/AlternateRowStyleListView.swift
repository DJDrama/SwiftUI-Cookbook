//
//  AlternateRowStyleListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/19/24.
//

import SwiftUI

struct AlternateRowStyleListView: View {
    let animals = ["🦀", "🐇", "🐖", "🐎", "🦛", "🐘", "🐄"]
    var body: some View {
        List(animals.indices, id: \.self) { index in
            HStack {
                let animal = animals[index]
                Text(animal)
                    .font(.largeTitle)
                Spacer()
            }.background(index%2==0 ? Color.blue:Color.green)
        }
    }
}

#Preview {
    AlternateRowStyleListView()
}
