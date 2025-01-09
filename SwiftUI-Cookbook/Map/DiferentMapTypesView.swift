//
//  DiferentMapTypesView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI
import MapKit

enum MapStyle: Hashable {
    case standard
    case satellite
    case hybrid
}

struct DiferentMapTypesView: View {
    @State private var mapStyle: MapStyle = .standard
    var body: some View {
        
        Picker("Select", selection:$mapStyle){
            Text("Standard").tag(MapStyle.standard)
            Text("Satellite").tag(MapStyle.satellite)
            Text("Hybrid").tag(MapStyle.hybrid)
        }.pickerStyle(.segmented)
        
        switch mapStyle {
        case .standard:
            Map {
                
            }.mapStyle(.standard)
        case .satellite:
            Map {
                
            }.mapStyle(.imagery)
        case .hybrid:
            Map {
                
            }.mapStyle(.hybrid)
        }



    }
}

#Preview {
    DiferentMapTypesView()
}
