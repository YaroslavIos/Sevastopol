//
//  PlaceDetailView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 26.5.2023.
//

import SwiftUI

struct PlaceDetailView: View {
    let place: Places
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                Text(place.name)
                    .font(.title)
                    .padding(.bottom, 10)
                    .foregroundColor(.accentColor)
                
                Text(place.headline)
                    .padding(.bottom, 10)
                
                GalleryView(place: place)
                
                Label("История", systemImage: "info.square")
                    .foregroundColor(.accentColor)
                    .font(.title)
                    .padding(.bottom, 10)
                
                Text(place.description)
                    .padding(.bottom, 10)
            }
        }
        .padding()
        .navigationTitle(place.name)
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static let places: [Places] = Bundle.main.decode("sights.json")
    
    static var previews: some View {
        PlaceDetailView(place: places[2])
    }
}
