import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["π€", "πΉ", "π€‘", "π©", "π§", "π§Έ", "β½οΈ", "π", "βοΈ", "π", "π", "π", "π", "π₯", "π³", "π₯Έ", "πΆβπ«οΈ", "π", "πββοΈ", "π", "π¦"]
    
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
