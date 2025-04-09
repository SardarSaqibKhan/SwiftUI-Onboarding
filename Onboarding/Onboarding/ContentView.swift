//
//  ContentView.swift
//  Onboarding
//
//  Created by sardar saqib on 08/04/2025.
//

import SwiftUI

struct ContentView: View {
   
    @AppStorage("hasSeenOnboardingView") var isOnboarding: Bool?
    
    var body: some View {
        VStack {
            Text("Welcome to main app")
                .font(.largeTitle)
            Button(action: {
              isOnboarding = false
            }) {
              HStack(spacing: 8) {
                Text("Re-Start")
                
                Image(systemName: "arrow.right.circle")
                  .imageScale(.large)
              }
              .padding(.horizontal, 16)
              .padding(.vertical, 10)
              .background(
                Capsule().strokeBorder(Color.black, lineWidth: 1.25)
              )
            }
            .accentColor(Color.black)
        }
    }
}

#Preview {
    ContentView()
}
