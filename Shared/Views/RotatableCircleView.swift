import SwiftUI

struct RotatableCircleView: View {
    @State private var isRotated: Bool = false

    var body: some View {
        let lineWidth = 15.0
        let diameter = 70.0
        
        let angle: Angle = isRotated ? .degrees(360) : .zero
        let angularGradient = AngularGradient(
            gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]),
            center: .center,
            angle: .zero
        )

        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1)) {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
