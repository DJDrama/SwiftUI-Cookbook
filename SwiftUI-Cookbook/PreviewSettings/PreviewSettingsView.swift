//
//  DeviceSpecificPreviewSettingsView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/6/25.
//

import SwiftUI

struct PreviewSettingsView: View {
    @State private var rating: Int?
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Image("cat").resizable()
                
                Text("Cat")
                    .font(.title)
                
                Text("This cat is blablabla, blablablablablablablablablablablablablablablablablablablablablablablabla. blablablablablablablablablablablablablablablablablablablablabla.")
                
                RatingStarsView(rating: $rating)
                Spacer()
            }.padding()
                .navigationTitle("Today's Cat")
        }
    }
}

#Preview {
    PreviewSettingsView()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .environment(\.sizeCategory, .extraLarge) // dynamic font size
            .preferredColorScheme(.dark) // dark mode <-> .light (light mode)
}
