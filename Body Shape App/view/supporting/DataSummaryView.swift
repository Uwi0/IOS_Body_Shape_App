import SwiftUI

struct DataSummaryView: View {
    
    let arrow: String
    let calories: String
    
    private let delta = 10.0
    private let percent1 = 0.6
    private let percent2 = 0.4
    private let personImages = [
        person1, person2, person3, person4
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(lightPurple)
                        .frame(width: geometry.size.width * percent1 - delta)
                        .overlay {
                            VStack {
                                HStack {
                                    Image(systemName: "fork.knife")
                                        .foregroundStyle(.black)
                                        .padding()
                                        .background(.white)
                                        .clipShape(Circle())
                                    
                                    Text("36%")
                                    Image(systemName: arrow)
                                }
                                HStack(alignment: .bottom) {
                                    Text(calories)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Calories")
                                        .font(.subheadline)
                                }
                            }
                        }
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1)
                        .overlay {
                            VStack {
                                Image(systemName: "figure.walk")
                                    .foregroundStyle(.black)
                                    .padding()
                                    .background(lightPurple)
                                    .clipShape(Circle())
                                Text("4.569")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                            }
                        }
                        .frame(width: geometry.size.width * (1 - percent1) - delta)
                }
                .frame(height: geometry.size.width * (1 - percent1) - delta)
            }
        }
    }
}

#Preview {
    DataSummaryView(arrow: "arrow.down", calories: "4.569")
}
