//
//  Account.swift
//  Clash
//
//  Created by Asher Dillon on 23/12/2024.
//

import SwiftUI

struct Account: View {
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack{
            HStack{
                Text("Saved Layouts")
                    .font(.title)
                    .padding(.leading, 15)
                Spacer()
            }
            ScrollView{
                VStack{
                    LayoutTile()
                    LayoutTile()
                    LayoutTile()
                    LayoutTile()
                    LayoutTile()
                    LayoutTile()
                    LayoutTile()
                    LayoutTile()
                }
            }
        }
    }
}

#Preview {
    Account()
}
