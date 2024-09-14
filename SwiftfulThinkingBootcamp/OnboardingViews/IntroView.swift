//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/11/24.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // bg
            RadialGradient(
                gradient: Gradient(colors: [.blue, .red]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            // if user is signed in
            // profile view
            // else
            // onboarding view
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnboardingView()
            }
        }
    }
}

#Preview {
    IntroView()
}
