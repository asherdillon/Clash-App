import SwiftUI

struct HomePage: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack (spacing: 10){
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: screenWidth * 0.95, height: screenHeight * 0.275)
                    .foregroundStyle(.blue)
            }
            .frame(height: 250)
            HStack{
                Text("Town Hall Level")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                Image(systemName: "greaterthan")
                    .foregroundStyle(Color.black)
                    .padding(.trailing, 10)
            }
            ScrollView (.horizontal){
                HStack{
                    ForEach((1...17).reversed(), id: \.self) { index in
                        Image("th\(index)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 133, height: 133)
                    }
                }
            }
            .padding(.bottom, 30)
            
            HStack{
                Text("Builder Hall Level")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                Image(systemName: "greaterthan")
                    .foregroundStyle(Color.black)
                    .padding(.trailing, 10)
            }
            ScrollView (.horizontal){
                HStack{
                    ForEach((1...10).reversed(), id: \.self) { index in
                        Image("bh\(index)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 133, height: 133)
                    }
                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
