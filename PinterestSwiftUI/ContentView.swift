//
//  ContentView.swift
//  PinterestSwiftUI
//
//  Created by VOLKAN EFE on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        Home()
//        always light theme
            .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
