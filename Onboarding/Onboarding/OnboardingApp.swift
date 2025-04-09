//
//  OnboardingApp.swift
//  Onboarding
//
//  Created by sardar saqib on 08/04/2025.
//

import SwiftUI

@main
struct OnboardingApp: App {
    @AppStorage("hasSeenOnboardingView") private var hasSeenOnboardingView = false
 
    var body: some Scene {
        WindowGroup {
            if hasSeenOnboardingView {
                ContentView()
            } else {
                OnboardingView {
                    hasSeenOnboardingView = true 
                }
            }
        }
    }
}
