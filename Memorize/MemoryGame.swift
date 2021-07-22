//
//  MemoryGame.swift
//  Memorize
//
//  Created by Sandro Vingla on 15/07/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(Card:Card) {
        print("Card chosen: \(Card)")
    }
    
    init (numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent ) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2+1))

        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched:Bool = true
        var content: CardContent
        var id: Int
    }
}
