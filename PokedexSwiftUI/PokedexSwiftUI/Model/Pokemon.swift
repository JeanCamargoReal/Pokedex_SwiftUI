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

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageURL: "1", type: "poison"),
    .init(id: 1, name: "Ivysaur", imageURL: "1", type: "poison"),
    .init(id: 2, name: "Venusaur", imageURL: "1", type: "poison"),
    .init(id: 3, name: "Charmander", imageURL: "1", type: "fire"),
    .init(id: 4, name: "Charmeleon", imageURL: "1", type: "fire"),
    .init(id: 5, name: "Charizard", imageURL: "1", type: "fire")
]

