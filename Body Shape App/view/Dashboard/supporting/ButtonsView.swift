import SwiftUI

struct ButtonsView: View {
    let imageNames = [
            "house.fill",
            "bookmark.fill",
            "alarm.fill",
            "arrow.up.right.square.fill"
        ]
    let actionName = [
            "Home",
            "Bookmark",
            "Go to alarm page",
            "Stats"
        ]
    
    @State private var selectedImage = "house.fill"
    
    var body: some View {
        HStack {
            ForEach(0 ..< imageNames.count, id: \.self){ index in
                let imageName = imageNames[index]
                let isSelected = selectedImage == imageName
                OneButtonView(
                    imageName: imageName,
                    action: { selectedImage = imageName },
                    isSelected: isSelected)
            }
            
        }
    }
}

struct OneButtonView: View {
    let imageName: String
    var action: () -> Void
    var isSelected: Bool
    
    private var color: Color {
        isSelected ? lightGreen : .clear
    }
    
    var body: some View {
        Button(
            action: action,
            label: {
                Image(systemName: imageName)
                    .imageScale(.large)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(color)
                    .clipShape(Circle())
            }
        )
    }
}

#Preview {
    ButtonsView()
}
