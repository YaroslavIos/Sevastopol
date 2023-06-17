//
//  Sevastopol.swift
//  Sevastopol
//
//  Created by Ярослав Любиченко on 27.5.2023.
//

import Foundation

struct Sevastopol: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
}
