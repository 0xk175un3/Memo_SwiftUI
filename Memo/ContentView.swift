import SwiftUI

struct ContentView: View {
    var currentGame: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(currentGame.cards) { card in
                CardView(card: card)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 25.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 25.0).stroke(lineWidth: 3.0)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 25.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(currentGame: EmojiMemoryGame())
    }
}
