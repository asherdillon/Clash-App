//
//  ContentView.swift
//  Clash
//
//  Created by Asher Dillon on 23/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomePage()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            Upload()
                .tabItem{
                    Label("Upload Layout", systemImage: "plus.circle.fill")
                }
            
            Account()
                .tabItem{
                    Label("Account", systemImage: "person.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
