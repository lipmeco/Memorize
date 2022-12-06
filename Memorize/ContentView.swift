import SwiftUI

struct ContentView: View {
    var emojis = ["🤖", "👹", "🤡", "💩", "🔧", "🧸", "⚽️", "🍑", "⛄️", "🌚", "🐇", "🙉", "👑", "🔥", "😳", "🥸", "😶‍🌫️", "😈", "🙆‍♂️", "🐔", "🦐"]
    @State var emojiCount = 21
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2 / 3, contentMode: .fit)
                    }
                }
                .foregroundColor(.blue)
            }
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp = true
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 10)
        ZStack {
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}




























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
