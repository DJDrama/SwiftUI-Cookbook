//
//  AddAnnotationsToMapView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI
import MapKit

struct MapPlace: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct AddAnnotationsToMapView: View {
    @State private var region =
    MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.808208, -122.415802), latitudinalMeters: 5000, longitudinalMeters: 5000)
    
    let annotations = [
        MapPlace(name: "Burger Place", coordinate: CLLocationCoordinate2DMake(37.807920, -122.422949)),
        MapPlace(name: "Park", coordinate: CLLocationCoordinate2DMake(37.804895, -122.429654)),
        MapPlace(name: "Tacos", coordinate: CLLocationCoordinate2DMake(37.807319, -122.421907))
    ]
    
    var body: some View {
        Map(initialPosition: .region(region)) {
            ForEach(annotations){ annotation in
                Marker(annotation.name, coordinate: annotation.coordinate)
            }
        }
        
        
    }
}

#Preview {
    AddAnnotationsToMapView()
}
