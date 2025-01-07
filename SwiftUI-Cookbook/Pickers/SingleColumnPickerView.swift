//
//  SingleColumnPickerView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/7/25.
//

import SwiftUI

struct SingleColumnPickerView: View {
    
    let genres = ["Fiction", "Horror", "Kids", "Romance"]
    @State private var selectedGenre: String = ""
    
    var body: some View {
        Picker("Select a Genre", selection: $selectedGenre, content: {
            ForEach(genres, id:\.self){genre in
                Text(genre)
            }
        })
        
        Text(selectedGenre)
    }
}

#Preview {
    SingleColumnPickerView()
}
