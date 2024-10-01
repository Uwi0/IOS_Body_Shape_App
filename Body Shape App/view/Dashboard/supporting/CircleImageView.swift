import SwiftUI

struct CircleImageView: View {
    let imageName: String
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(color, lineWidth: lineWidth)
            }.frame(width: size, height: size)
    }
}


struct CircleCoutnView: View {
    
    let count: Int
    let size: CGFloat
    let color: Color
    let lineWidth: CGFloat
    
    var backroundColor: Color = .white
    
    var body: some View {
        ZStack {
            Circle()
                .fill(backroundColor)
                .overlay {
                    Circle()
                        .stroke(color, lineWidth: lineWidth)
                }
                .frame(width: size, height: size)
            
            Text("+\(count)")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(color)
                .minimumScaleFactor(0.1)
        }
    }
}

#Preview {
    CircleImageView(imageName: person1, color: .white, size: 79, lineWidth: 1)
}
