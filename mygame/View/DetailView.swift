//
//  DetailView.swift
//  mygame
//
//  Created by Abd Wahid on 15/09/24.
//

import SwiftUI


struct DetailView: View {
    @State var data: ResultModel
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: data.backgroundImage ?? "")) { image in image.resizable() } placeholder: {
                ProgressView()
            }.frame(height: 256)
            
            VStack(alignment: .leading){
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                    Text(data.name ?? "")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Spacer()
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text(String(data.rating ?? 0.0))
                        .font(.callout)
                    Text(data.released ?? "")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(data.description ?? "")
                        .font(.body)
                }
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}
