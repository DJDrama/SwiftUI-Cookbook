//
//  UnwindNavigationView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

// want to go back from view C --> view A
struct UnwindNavigationView: View {
    
    @State private var isRootActive = false
    var body: some View {
        NavigationStack {
            VStack {
                Button("Go to ViewB"){
                    isRootActive = true
                }
                .font(.largeTitle)
                .foregroundStyle(.white)
                
            }
            .navigationDestination(isPresented: $isRootActive, destination: {
                ViewB(isRootActive: $isRootActive)
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .navigationTitle("View A")
        }
    }
}

struct ViewB: View {
    @Binding var isRootActive: Bool
    
    var body: some View {
        VStack {
            NavigationLink {
                ViewC(isRootActive: $isRootActive)
            } label: {
                Text("Go to ViewC")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
        .navigationTitle("View B")
    }
}

struct ViewC: View {
    @Binding var isRootActive: Bool
    
    var body: some View {
        VStack {
            Text("View C")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Button("Go to View A"){
                isRootActive = false
            }.foregroundStyle(.green)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple)
        .navigationTitle("View C")
    }
}

#Preview {
    UnwindNavigationView()
}
