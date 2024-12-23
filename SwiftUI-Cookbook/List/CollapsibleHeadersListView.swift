//
//  CollapsibleHeadersListView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/23/24.
//

import SwiftUI

struct HikePlace: Identifiable {
    let id = UUID()
    let name: String
    let hikes: [Hike]
}

struct Hike: Identifiable {
    let id = UUID()
    let name: String
}

private func getAllPlacesWithHikdes() -> [HikePlace] {
    return [
        HikePlace(name: "Colorado", hikes: [
            Hike(name: "Trail Ridge"),
            Hike(name: "Flatirons"),
            Hike(name: "Maroon Bells Peaks"),
        ]),
        HikePlace(name: "Oregon", hikes: [
            Hike(name: "Cascade Mountains"),
            Hike(name: "Crater Lake National Park"),
        ])
    ]
}

struct CollapsibleHeadersListView: View {
    @State private var places = getAllPlacesWithHikdes()
    @State private var selectedHikePlaceId: UUID?
    @State private var isExpanded: Bool = false
    
    var body: some View {
        List(places) { place in
            VStack(alignment: .leading){
                HStack{
                    Text("\(place.name)")
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Spacer()
                    Image(systemName: selectedHikePlaceId == place.id ? "chevron.down" : "chevron.right")
                        .padding(.bottom, 10)
                }.onTapGesture {
                    isExpanded.toggle()
                    selectedHikePlaceId = isExpanded ? place.id : nil
                }
                
                if(selectedHikePlaceId == place.id){
                    ForEach(place.hikes){ hike in
                        Text("\(hike.name)")
                    }.padding(.horizontal)
                }
                    
            }
        }.listStyle(.plain)
    }
}

#Preview {
    CollapsibleHeadersListView()
}
