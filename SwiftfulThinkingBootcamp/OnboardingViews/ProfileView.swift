//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/14/24.
//

import SwiftUI

struct ProfileView: View {
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        VStack(spacing: 10.0) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(currentUserName ?? "Nil")
            Text("Your age: \(currentUserAge ?? 0)")
            Text("Your gender: \(currentUserGender ?? "Unknown")")
            
            Text("Sign Out")
                .font(.caption)
                .foregroundStyle(.gray)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.headline)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .padding(.horizontal, 45)
        .background(Color.white)
        .cornerRadius(10.0)
        .shadow(radius: 10.0)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
