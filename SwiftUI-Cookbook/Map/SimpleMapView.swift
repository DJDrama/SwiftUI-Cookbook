//
//  SimpleMapView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI
import MapKit

struct SimpleMapView: View {
    @State private var region =
    MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.808208, -122.415802), latitudinalMeters: 500, longitudinalMeters: 500)
    
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    SimpleMapView()
}
