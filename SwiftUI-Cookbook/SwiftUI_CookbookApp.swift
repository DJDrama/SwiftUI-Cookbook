//
//  SwiftUI_CookbookApp.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/19/24.
//

import SwiftUI

@main
struct SwiftUI_CookbookApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            // for GlobalStateUsingEnvironmentObject (Counter class)
                .environmentObject(Counter())
        }
    }
}
