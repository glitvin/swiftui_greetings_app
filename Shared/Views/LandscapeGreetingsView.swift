import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack(spacing: 40) {
                VerticalTitleView()
                
                Spacer(minLength: 20)
                
                MessagesView()
            }
            .padding(.horizontal, 50)
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
