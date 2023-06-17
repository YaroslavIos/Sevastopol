//
//  AnnotationMapView.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 13.6.2023.
//

import SwiftUI

struct AnnotationMapView: View {
    var location: Locations
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct AnnotationMapView_Previews: PreviewProvider {
    static var locations: [Locations] = Bundle.main.decode("location.json")
    
    static var previews: some View {
        AnnotationMapView(location: locations[0])
    }
}
