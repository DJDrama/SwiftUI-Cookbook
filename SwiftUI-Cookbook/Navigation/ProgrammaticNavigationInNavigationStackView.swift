//
//  ProgrammaticNavigationInNavigationStackView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

enum Route: Hashable {
    case viewA
    case viewB
}

struct ProgrammaticNavigationInNavigationStackView: View {
    @State private var routes: [Route] = []
    
    var body: some View {
        NavigationStack(path: $routes) {
            VStack {
                Button("Take me to View B."){
                    routes.append(.viewB)
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .viewA :
                    Text("View A")
                case .viewB :
                    Text("View B")
                }
            }
        }
    }
}

#Preview {
    ProgrammaticNavigationInNavigationStackView()
}
