//
//  PinterestSwiftUIApp.swift
//  PinterestSwiftUI
//
//  Created by VOLKAN EFE on 28.03.2024.
//

import SwiftUI

@main
struct PinterestSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        hiding title bar
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
