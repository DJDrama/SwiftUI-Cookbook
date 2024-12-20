//
//  FilterResultsListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/20/24.
//

import SwiftUI

struct Place: Identifiable {
    let id = UUID()
    let name: String
}

func getPlaces() -> [Place] {
    return [
        Place(name: "Denver"),
        Place(name: "Seoul"),
        Place(name: "Tokyo"),
        Place(name: "Beijing"),
        Place(name: "New York"),
    ]
}

struct SearchAndFilterResultsListView: View {
    @State private var places: [Place] = getPlaces()
    @State private var query: String = ""
    var body: some View {
        NavigationView {
            List(places) { place in
                Text("\(place.name)")
                    .font(.title)
            }
            .listStyle(.plain)
            .searchable(text: $query)
            .onChange(of: query, { _, newValue in
                if !newValue.isEmpty && newValue.count>=1 {
                    places = places.filter({ place in
                        place.name.lowercased().contains(newValue.lowercased())
                    })
                } else {
                    places = getPlaces()
                }
            })
            .navigationTitle("Places")
        }
        
    }
}

#Preview {
    SearchAndFilterResultsListView()
}
