import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🤖", "👹", "🤡", "💩", "🔧", "🧸", "⚽️", "🍑", "⛄️", "🌚", "🐇", "🙉", "👑", "🔥", "😳", "🥸", "😶‍🌫️", "😈", "🙆‍♂️", "🐔", "🦐"]
    
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
}
