//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/14/24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernamefocus: Bool
    @State private var username: String = ""
    @FocusState private var passwordfocus: Bool
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Add your name here ...", text: $username)
                .focused($usernamefocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            TextField("Add your password here ...", text: $password)
                .focused($passwordfocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            
            Button("Sign Up 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Username: \(username)")
                    print("Password: \(password)")
                } else if usernameIsValid {
                    usernamefocus = false
                    passwordfocus = true
                } else {
                    usernamefocus = true
                    passwordfocus = false
                }
            }

//            Button("Focus State Toggle") {
//                usernamefocus.toggle()
//            }
        }
        .padding(40.0)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
//                self.usernamefocus = true
//            }
//            )}
    }
}

#Preview {
    FocusStateBootcamp()
}
