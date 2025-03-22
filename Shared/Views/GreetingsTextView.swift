import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey
    
    let subtitles: [LocalizedStringKey] = [
        "Crafting Digital Magic ✨",
        "Bringing Ideas to Life 💡",
        "Think. Code. Innovate. 🚀",
        "Empowered by Swift 💻",
        "Code the Future 🔥"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                #if os(macOS)
                Text(subtitle)
                    .font(.title)
                Text("MAC APP")
                #elseif os(iOS)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
                Text("iOS App")
                #endif
            }
            .onTapGesture {
                subtitle = newRandomSubtitle()
            }
        }
    }
    
    private func newRandomSubtitle() -> LocalizedStringKey {
        let filteredSubtitles = subtitles.filter { $0 != subtitle }
        return filteredSubtitles.randomElement() ?? subtitle
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Explore IOS Programming"))
}
