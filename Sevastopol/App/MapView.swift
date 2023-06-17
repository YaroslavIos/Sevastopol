//
//  MapView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 25.5.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 44.618364, longitude: 33.524212)
        var mapZoom = MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoom)
        
        return mapRegion
    }()
    
    let location: [Locations] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: location, annotationContent: {
            item in MapAnnotation(coordinate: item.location) {
                AnnotationMapView(location: item)
            }
        })
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(.black)
            .cornerRadius(8)
            .opacity(0.6)
            .padding()
            , alignment: .top
        
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
