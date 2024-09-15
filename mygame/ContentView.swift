//
//  ContentView.swift
//  mygame
//
//  Created by Abd Wahid on 15/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ProfileView()
                    .tabItem{
                        Label("Profile", systemImage: "person.crop.circle")
                    }
            }
            .accentColor(.cyan)
        }
    }
}

#Preview {
    ContentView()
}
