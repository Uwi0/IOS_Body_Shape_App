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
                DataSummaryView(arrow: "arrow.down", calories: "4.569")
                Spacer()
                ButtonsView()
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
