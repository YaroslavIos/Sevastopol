//
//  GalleryView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 26.5.2023.
//

import SwiftUI

struct GalleryView: View {
    let place: Places
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(place.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static let places: [Places] = Bundle.main.decode("sights.json")
    
    static var previews: some View {
        GalleryView(place: places[2])
    }
}
