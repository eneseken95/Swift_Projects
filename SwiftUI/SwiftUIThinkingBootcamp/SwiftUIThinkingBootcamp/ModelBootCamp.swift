//
//  ModelBootCamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Enes Eken on 8.05.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootCamp: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Enes", userName: "Enes123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 200, isVerified: true),
        UserModel(displayName: "Tommy", userName: "Tommy123", followerCount: 150, isVerified: false),
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 20.0) {
                        Circle()
                            .frame(width: 35, height: 35)

                        VStackLayout(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                        }
                        Spacer()

                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }

                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }

            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootCamp()
}
