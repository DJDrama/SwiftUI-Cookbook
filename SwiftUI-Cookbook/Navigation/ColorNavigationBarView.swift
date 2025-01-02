//
//  ColorNavigationBarView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/2/25.
//

import SwiftUI

struct ColorNavigationBarView: View {
    
    init() {
        // Change color
        
        /** (We can put this lines on App file to set the whole app */
        // background
        UINavigationBar.appearance().backgroundColor = UIColor.blue
        // title
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("List of Plants")
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            .ignoresSafeArea(.all)
            .navigationTitle("Plants")
            
        }
    }
}

#Preview {
    ColorNavigationBarView()
}
