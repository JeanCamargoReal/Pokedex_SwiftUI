//
//  PokemonDetailView.swift
//  PokedexSwiftUI
//
//  Created by Jean Camargo on 09/02/21.
//

import SwiftUI
import Kingfisher


struct PokemonDetailView: View {
    
    let pokemon: Pokemon
    let viewModel: PokemonCellViewModel
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
        self.viewModel = PokemonCellViewModel(pokemon: pokemon)
    }

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(viewModel.backgroundColor), Color.white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                            
                Color.white.offset(y: 300)
            
            ScrollView {
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .frame(width: 200, height: 200)
                
                VStack {
                    Text(pokemon.name.capitalized)
                        .font(.largeTitle)
                        .padding(.top, 40)

                    Text(pokemon.type.capitalized)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.init(top: 8, leading: 24, bottom: 8, trailing: 24))
                        .background(Color(viewModel.backgroundColor))
                        .cornerRadius(20)
                    
                    Text(pokemon.description)
                        .padding(.horizontal)
                        .padding(.top, 12)
                    
                    HStack { Spacer() }
                }
                .background(Color.white)
                .cornerRadius(40)
                .padding(.top, -40)
                .zIndex(-1)
                
                HStack {
                    Text("Stats")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.leading)
                    
                    Spacer()
                }

                
                BarChartView(pokemon: pokemon)
                    .padding(.trailing)
                    .padding(.top, -16)
            }
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: SAMPLE_POKEMON)
    }
}
