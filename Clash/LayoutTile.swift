//
//  LayoutTile.swift
//  Clash
//
//  Created by Asher Dillon on 23/12/2024.
//

import SwiftUI

struct LayoutTile: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(.gray.opacity(0.2))
                .frame(width: screenWidth * 0.95, height: screenHeight * 0.3, alignment: .center)
                .shadow(radius: 5)
            
            VStack{
                Image("baseTest")
                    .resizable()
                    .frame(width: screenWidth * 0.90, height: screenHeight * 0.21, alignment: .top)
                    .cornerRadius(10)
                    .padding(.top, -30)
                HStack{
                    Text("Town Hall 17 Farming Base")
                        .font(.headline)
                        .padding(.leading, 25)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LayoutTile()
}
