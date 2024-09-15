//
//  ProfileView.swift
//  mygame
//
//  Created by Abd Wahid on 15/09/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("pic")
                    .resizable()
                    .frame(width: 128, height: 128)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                        .stroke(.primary, lineWidth: 2)
                    )
                    .padding(.vertical, 16.0)
                
                Text("Wahid")
                    .font(.title2)
                    .bold()
            
                Text(verbatim: "wahidabd")
                    .font(.body)
                    .foregroundColor(.secondary)
                Spacer()
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ProfileView()
}
