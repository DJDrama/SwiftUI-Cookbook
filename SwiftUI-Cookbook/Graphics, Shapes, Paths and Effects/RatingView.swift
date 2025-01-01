//
//  RatingView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/1/25.
//

import SwiftUI

struct RatingStarsView: View{
    @Binding var rating: Int?
    
    private func starType(index: Int) -> String {
        if let rating = self.rating {
            return index<=rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...5, id:\.self) { index in
                Image(systemName: self.starType(index: index))
                    .foregroundStyle(.orange)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
}

struct RatingView: View {
    @State private var rating: Int?
    var body: some View {
        RatingStarsView(rating: $rating).padding()
        Text(rating != nil ? "Your rating: \(rating!)" : "")
    }
}

#Preview {
    RatingView()
}
