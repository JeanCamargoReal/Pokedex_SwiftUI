//
//  NavigationLazyView.swift
//  PokedexSwiftUI
//
//  Created by Jean Camargo on 09/02/21.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
