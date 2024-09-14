//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 9/11/24.
//

import SwiftUI

struct OnboardingView: View {
    // Onboarding States
    /*
     0 - welcome screen
     1 - add name
     2 - add age
     3 - add gender
     */
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // onboarding states
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // alerts
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            
            // button
            VStack {
                Spacer()
                bottomButton
                
            }
            .padding(30.0)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}


#Preview {
    OnboardingView()
        .background(Color.purple)
}


// MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Text(
            onboardingState == 0 ? "Sign Up" :
                onboardingState == 3 ? "Finish" :
                "Next")
        .font(.headline)
        .foregroundColor(.purple)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        //.animation(nil)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom)
            
            Text("This is the No. 1 APP finding your match online! Please fill out our preferences and basic info such that we can find your best fit")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30.0)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here ...", text: $name)
                .font(.headline)
                .frame(width: 300, height: 35)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10.0)
            Spacer()
            Spacer()
        }
        .padding(30.0)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30.0)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(
                selection: $gender,
                label: Text("Select a Gender"),
                content: {
                    Text("Female").tag("Female")
                    Text("Male").tag("Male")
                    Text("Non-binary").tag("Non-binary")
                })
            .pickerStyle(InlinePickerStyle())
            Spacer()
            Spacer()
        }
        .padding(30.0)
    }
}



// MARK: FUNCTIONS
extension OnboardingView {
    func handleNextButtonPressed() {
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlertFunc(title: "Please enter a valid username")
                return
            }
        case 3:
            guard gender.count > 3 else {
                showAlertFunc(title: "Please select a gender before moving forward")
                return
            }
        default:
            break
        }
        
        
        // GO TO NEXT SCREEN
        if onboardingState == 3 {
            // sign in
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlertFunc(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}

