//
//  Places.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 25.5.2023.
//

import Foundation

struct Places: Identifiable, Codable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
}
