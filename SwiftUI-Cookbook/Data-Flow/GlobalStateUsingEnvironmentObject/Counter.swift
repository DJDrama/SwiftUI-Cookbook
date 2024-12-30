//
//  Counter.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/30/24.
//

import Foundation


class Counter: ObservableObject {
    // @Published : when value is changed, it will publish and others can capture it
    @Published var value: Int = 0
    
    func increment(){
        DispatchQueue.main.async {
            self.value += 1
        }
        
    }
}
