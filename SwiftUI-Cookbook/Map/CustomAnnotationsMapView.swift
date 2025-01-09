//
//  CustomAnnotationsMapView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 1/9/25.
//

import SwiftUI
import MapKit



struct CustomAnnotationsMapView: View {
    // Just For Practice
    struct Place: Identifiable {
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
    }
    
    @State private var region =
    MKCoordinateRegion(center: CLLocationCoordinate2DMake(37.808208, -122.415802),
                       latitudinalMeters: 5000, longitudinalMeters: 5000)
    
    let annotations = [
        MapPlace(name: "Burger Place", coordinate: CLLocationCoordinate2DMake(37.807920, -122.422949)),
        MapPlace(name: "Park", coordinate: CLLocationCoordinate2DMake(37.804895, -122.429654)),
        MapPlace(name: "Tacos", coordinate: CLLocationCoordinate2DMake(37.807319, -122.421907))
    ]
    
    var rating: String{
        return String(format: "%.1f", Double.random(in: 1...5))
    }
    
    var body: some View {
        Map(initialPosition: .region(region)) {
            ForEach(annotations){annotation in
                Annotation(coordinate: annotation.coordinate, content: {
                    HStack {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                        Text(rating)
                            .fixedSize()
                    }.padding(10)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style:.continuous))
                        .overlay(alignment: .bottom) {
                            Image(systemName:"arrowtriangle.left.fill")
                                .rotationEffect(Angle(degrees: 270))
                                .foregroundStyle(.white)
                                .offset(y: 10)
                        }
                    
                }, label: {
                    Text(annotation.name)
                })
            }
        }
    }
}

#Preview {
    CustomAnnotationsMapView()
}
