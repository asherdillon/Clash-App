//
//  Upload.swift
//  Clash
//
//  Created by Asher Dillon on 23/12/2024.
//

import SwiftUI

struct Upload: View {
    
    @State var title: String = ""
    @State var thlevel: String = ""
    @State var description: String = ""
    @State var categories: String = ""
    @State var url: String = ""
    
    var body: some View {
        VStack{
            Form{
                //title
                Text("Title")
                TextEditor(text: $title)
                //townhall or builder hall level
                Text("Town Hall Level")
                TextEditor(text: $thlevel)
                //description
                Text("Base Description")
                TextEditor(text: $description)
                //categories / tags
                Text("Select up to 3 Categories")
                TextEditor(text: $categories)
                
                Section{
                    //url
                    Text("Base Link Url")
                    TextEditor(text: $url)
                }
            }
            Button {
                print("submit")
            }
            label: {
                HStack{
                    Text("Submit")
                        .foregroundStyle(.black)
                }
                .frame(width: 150, height: 50)
                .background(.blue)
                .cornerRadius(1000)
            }
            .padding(.bottom, 150)
        }
    }
}

#Preview {
    Upload()
}
