//
//  Location.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 28.5.2023.
//

import Foundation
import MapKit

struct Locations: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
