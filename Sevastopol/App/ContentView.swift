//
//  ContentView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 25.5.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PlacesView()
                .tabItem {
                    Label("Места", systemImage: "location.circle")
                }
            CityView()
                .tabItem {
                    Label("Севастополь", systemImage: "house.circle.fill")
                }
            MapView()
                .tabItem {
                    Label("Карта", systemImage: "map.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
