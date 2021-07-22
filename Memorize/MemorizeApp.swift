//
//  MemorizeApp.swift
//  Memorize
//
//  Created by alexsandro  vingla on 01/05/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
