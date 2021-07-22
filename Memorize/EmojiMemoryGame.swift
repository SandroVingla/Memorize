//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Sandro Vingla on 15/07/21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemorygame()
    
    static func createMemorygame() -> MemoryGame<String> {
        let emojis = ["👻", "🐙", "🦊" ]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //Mark: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //Mark: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(Card: card)
    }
}
