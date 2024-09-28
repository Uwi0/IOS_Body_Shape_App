import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRightView(
                imageName: "circle.grid.cross.fill",
                angle: 45
            )
            .padding()
            Spacer()
        }
        
    }
}

#Preview {
    DashboardView()
}
