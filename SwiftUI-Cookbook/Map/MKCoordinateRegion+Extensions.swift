//
//  MKCoordinateRegion+Extensions.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import Foundation
import MapKit
import SwiftUI

extension MKCoordinateRegion {
    static func defaultRegion() -> MKCoordinateRegion {
        return MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.808208, -122.415802),
                                  latitudinalMeters: 5000, longitudinalMeters: 5000)
    }
    
    // Unused
    func asBindable() -> Binding<MKCoordinateRegion>? {
        return Binding<MKCoordinateRegion>(.constant(self))
    }
}
