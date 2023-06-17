//
//  CityView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 25.5.2023.
//

import SwiftUI

struct CityView: View {
    let city: [Sevastopol] = Bundle.main.decode("sevastopol.json")
    
    var body: some View {
        CityDetailsView(city: city[0])
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
