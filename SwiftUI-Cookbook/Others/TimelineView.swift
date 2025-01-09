//
//  TimelineView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI

struct LearnTimelineView: View {
    var body: some View {
        // 1 -> 1 second (executes every 1 second)
        TimelineView(PeriodicTimelineSchedule(from: Date(), by: 1)) { context in
            Text("\(context.date)")
        }
    }
}

#Preview {
    LearnTimelineView()
}
