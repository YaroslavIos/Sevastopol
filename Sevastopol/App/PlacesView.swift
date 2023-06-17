//
//  SwiftUIView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 25.5.2023.
//

import SwiftUI

struct PlacesView: View {
    let place: [Places] = Bundle.main.decode("sights.json")
    
    var body: some View {
        NavigationStack {
            List(place) { place in
                NavigationLink(destination: PlaceDetailView(place: place)) {
                    PlacesListView(place: place)
                }
            }
            .navigationTitle("Места")
        } // end NavStack
    }
}

struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
