import SwiftUI
import TipKit

struct TitleView: View {
    
    @State var subtitle: LocalizedStringKey = "Explore IOS Programming"
    
    private var greetingsTip = GreetingsTip()
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            Spacer()
            RotatableCircleView()
        }
        .padding()
    }
}

#Preview {
    TitleView()
}
