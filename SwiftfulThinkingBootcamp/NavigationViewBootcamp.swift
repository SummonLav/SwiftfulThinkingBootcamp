//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Lavenda Shan on 8/23/24.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Click the link here!") {
                    DetailsScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: DetailsScreen(),
                        label: {Image(systemName: "gear")})
                    .accentColor(.red)
            )
        }
    }
}

struct DetailsScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Color.cyan
            .ignoresSafeArea(.all)
            .navigationTitle("Details Screen")
        
        VStack {
            Button("Back Button") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
