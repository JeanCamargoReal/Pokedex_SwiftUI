//
//  Pokemon.swift
//  PokedexSwiftUI
//
//  Created by Jean Camargo on 08/02/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let type: String
}
