import SwiftUI

class EmojiMemoryGame {
    private var game: MemoryGame<String> = createMemoryGame()
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
