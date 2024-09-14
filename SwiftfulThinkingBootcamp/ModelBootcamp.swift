//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/6/24.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Amy", "Cindy", "Lavenda"
        UserModel(displayName: "Nick", username: "Ninja", followerCount: 49, isVerified: true),
        UserModel(displayName: "Amy", username: "Amysdasjasd", followerCount: 2, isVerified: false),
        UserModel(displayName: "Cindy", username: "Cindy_Yang", followerCount: 9980, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) {user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.green)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .font(.caption)
                        }
                        .foregroundColor(.orange)
                    }
                    .padding(.vertical, 10)
                }
            }
            //.listStyle(InsetListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
