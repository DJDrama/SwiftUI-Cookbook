//
//  DateFormattingView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/27/24.
//

import SwiftUI

struct DateFormattingView: View {
    
    let now = Date()
    
    var body: some View {
        VStack {
            Text(now.formatted())
            Text(now.formatted(date: .omitted, time: .standard))
            Text(now.formatted(date: .abbreviated, time: .complete))
            Text(now.formatted(date: .long, time: .omitted))
            Text(now.formatted(date: .numeric, time: .omitted))
            Text(now.formatted(.iso8601))
            Text(now, format: Date.FormatStyle().year())
            Text(now, format: Date.FormatStyle().month())
            Text(now, format: Date.FormatStyle().day())
            Text(now, format: Date.FormatStyle().day().month())
            Text(now, format: Date.FormatStyle().day().month(.twoDigits))
            Text(now, format: Date.FormatStyle().day().month().year(.twoDigits))
            Text(now, format: Date.FormatStyle().day().month().year(.defaultDigits))
        }.padding()
    }
}

#Preview {
    DateFormattingView()
}
