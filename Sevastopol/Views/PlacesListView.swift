//
//  PlacesListView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 26.5.2023.
//

import SwiftUI

struct PlacesListView: View {
    let place: Places
    
    var body: some View {
        HStack(alignment: .center) {
            Image(place.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(12)
            
            VStack(alignment: .leading) {
                Text(place.name)
                Text(place.headline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .padding(.trailing)
            }
        }
        //.padding()
    }
}

struct PlacesListView_Previews: PreviewProvider {
    static let places: [Places] = Bundle.main.decode("sights.json")
    
    static var previews: some View {
        PlacesListView(place: places[2])
    }
}
