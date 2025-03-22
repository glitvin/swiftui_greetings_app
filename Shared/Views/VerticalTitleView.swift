import SwiftUI

struct VerticalTitleView: View {
    @State var subtitle: LocalizedStringKey = "Explore IOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
            RotatableCircleView() 
            Spacer()
        }
        .padding()
    }
}

#Preview {
    VerticalTitleView()
}
