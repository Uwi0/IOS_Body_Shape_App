import SwiftUI

struct DataSummaryView: View {
    
    let arrow: String
    let calories: String
    
    private let delta = 10.0
    private let percent1 = 0.6
    private let percent2 = 0.4
    private let peopleShownCount = 2
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
                HStack(spacing: 15) {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.black)
                        .frame(width: geometry.size.width * percent2 - delta)
                        .overlay {
                            Text("Start")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 1)
                        .overlay {
                            VStack {
                                Text("Members")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                HStack(spacing: -10) {
                                    let extraPeople = min(personImages.count, peopleShownCount)
                                    let circleDim = 45.0
                                    ForEach(0 ..< extraPeople, id: \.self) { i in
                                        CircleImageView(imageName: personImages[i], color: .black, size: circleDim, lineWidth: 1)
                                    }
                                    if personImages.count > 2 {
                                        let peopleCount = personImages.count - extraPeople
                                        CircleCoutnView(
                                            count: peopleCount,
                                            size: circleDim,
                                            color: .black,
                                            lineWidth: 1
                                        )
                                    }
                                }
                            }
                        }
                }
                .frame(height: geometry.size.width * percent2 - delta)
            }
        }
    }
}

#Preview {
    DataSummaryView(arrow: "arrow.down", calories: "4.569")
}
