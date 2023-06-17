//
//  MapDetailView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 28.5.2023.
//

import SwiftUI
import MapKit

struct MapDetailView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.618364, longitude: 33.524212), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mapping.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Location")
                            .foregroundColor(.accentColor)
                        fontWeight(.bold)
                    }
                }
                    .padding(12)
                , alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

struct MapDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailView()
    }
}
