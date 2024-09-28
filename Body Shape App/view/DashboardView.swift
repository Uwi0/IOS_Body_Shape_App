import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRightView(
                imageName: "circle.grid.cross.fill",
                angle: 45
            )
            .padding()
            VStack(alignment: .leading) {
                WelcomeMessageView(username: "Peno")
                WeightView(weight: 61.2, weightUnits: "lb")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            Spacer()
        }
        
    }
}

#Preview {
    DashboardView()
}
