//
//  OnReceiveModifier.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import SwiftUI

extension Notification.Name {
    static let taskAddedNotification = Notification.Name("TaskAddedNotification")
    
}
struct OnReceiveModifier: View {
    @State private var newTask: String?
    var body: some View {
        VStack {
            Button("Post Notification") {
                // post
                NotificationCenter.default.post(name: Notification.Name.taskAddedNotification, object: "Wash the car!")
            }
            
            Text(newTask ?? "")
                // receive
                .onReceive(NotificationCenter.default.publisher(for: Notification.Name.taskAddedNotification), perform: {
                    newTask = $0.object as? String
                })
        }
    }
}

#Preview {
    OnReceiveModifier()
}
