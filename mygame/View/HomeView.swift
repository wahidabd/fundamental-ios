//
//  HomeView.swift
//  mygame
//
//  Created by Abd Wahid on 15/09/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var data = GameController()
    
    var body: some View {
        NavigationView {
            List(data.games) { game in
                NavigationLink(destination: DetailView(data: game)) {
                    HStack(spacing: 15){
                        AsyncImage(url: URL(string: game.backgroundImage ?? "")) { image in
                            image.resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 64, height: 64)
                        .cornerRadius(8.0)
                        VStack(alignment: .leading) {
                            Text(game.name ?? "")
                                .font(.headline)
                                .bold()
                            Text(game.released ?? "")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Text(String(game.rating ?? 0.0))
                            .font(.system(size: 12))
                            .foregroundColor(.yellow)
                    }
                    .padding([.leading, .bottom, .trailing])
                }
            }
            .listStyle(.grouped)
            .navigationTitle("MyGame")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Search button was tapped")
                    } label: {
                        Label("Search", systemImage: "magnifyingglass")
                            .foregroundColor(.cyan)
                    }
                }
            }
            .onAppear {
                data.getGames {(games) in
                    self.data.games = games
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview() {
    HomeView()
}
