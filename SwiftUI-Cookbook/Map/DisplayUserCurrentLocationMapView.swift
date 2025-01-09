//
//  DisplayUserCurrentLocationMapView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI
import MapKit

struct DisplayUserCurrentLocationMapView: View {
    @StateObject private var locationManager = LocationManager()
    
    var newRegion: MKCoordinateRegion? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.defaultRegion()
        }
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
        return region
    }
    
    var body: some View {
        if let region = newRegion {
            
            Map(initialPosition: .region(region), interactionModes: .all) {
                UserAnnotation()
            }.mapControls {
                MapUserLocationButton()
            }
        }
    }
}

#Preview {
    DisplayUserCurrentLocationMapView()
}
