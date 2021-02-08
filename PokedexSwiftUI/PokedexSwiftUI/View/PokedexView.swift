//
//  PokedexView.swift
//  PokedexSwiftUI
//
//  Created by Jean Camargo on 07/02/21.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(0..<151) { _ in
                        PokemonCell(pokemon: MOCK_POKEMON[4])
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
