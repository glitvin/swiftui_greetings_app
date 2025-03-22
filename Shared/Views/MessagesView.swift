
import SwiftUI

struct MessagesView: View {
        let messages: [DataItemModel] = [
            .init(text: "Hello, Coder! 💥", color: .CustomGray),
            .init(text: "Code time!", color: .CustomPurple),
            .init(text: "Ready to crash? 😜", color: .CustomGreen),
            .init(text: "Let’s code! 💻", color: .CustomYellow),
            .init(text: "Boom! 💥", color: .CustomRed)
        ]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
