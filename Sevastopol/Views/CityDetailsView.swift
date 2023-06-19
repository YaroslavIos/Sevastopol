//
//  CityDetailsView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 27.5.2023.
//

import SwiftUI

struct CityDetailsView: View {
    let city: Sevastopol
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(city.name)
                    .font(.largeTitle)
                Text(city.headline)
                    .fontWeight(.semibold)
                Label("Герб Севастополя", systemImage: "flag.2.crossed.circle")
                    .font(.title)
                    .foregroundColor(.accentColor)
            }
            VStack(alignment: .center) {
                Image(city.image)
                    .resizable()
                    .frame(width: 240, height: 240)
                Text(city.description)
            }
        }
        .padding()
    }
}

struct CityDetailsView_Previews: PreviewProvider {
    static let city: [Sevastopol] = Bundle.main.decode("sevastopol.json")
    
    static var previews: some View {
        CityDetailsView(city: city[0])
    }
}
