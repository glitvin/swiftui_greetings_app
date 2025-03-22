
import SwiftUI

///  This is the backgroun view which contains a linear gradient
struct BackgroundView: View {
    var body: some View {
            LinearGradient(colors: [
                .CustomBlue1,
                .CustomBlue2
            ], startPoint:
                    .topLeading, endPoint:
                    .bottomTrailing)
            .opacity(1)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
