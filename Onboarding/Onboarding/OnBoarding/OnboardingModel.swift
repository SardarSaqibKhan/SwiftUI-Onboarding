//
//  OnboardingDatasource.swift
//  Onboarding
//
//  Created by sardar saqib on 09/04/2025.
//

import Foundation

struct OnboardingModel {
    
    let id: Int
    let title : String
    let description : String
    let imageName : String
    
    init(id: Int, title: String, description: String, imageName: String) {
        self.id = id
        self.title = title
        self.description = description
        self.imageName = imageName
    }
    
   
}
extension OnboardingModel {
    static let dataSource = [
        
            OnboardingModel(
                id: 1,
                title: "Walking",
                description: "Take your first step toward a healthier lifestyle. Walking helps improve stamina, mood, and overall well-being.",
                imageName: "figure.walk"
            ),
            OnboardingModel(
                id: 2,
                title: "Running",
                description: "Boost your endurance and stay fit with personalized running plans. Track your pace, distance, and goals.",
                imageName: "figure.run"
            ),
            OnboardingModel(
                id: 3,
                title: "Basket Ball",
                description: "Jump into fast-paced gameplay! Practice your shots, monitor performance, and level up your basketball skills.",
                imageName: "figure.basketball"
            ),
            OnboardingModel(
                id: 4,
                title: "Archery",
                description: "Focus, aim, and release! Archery helps build concentration and precision. Master the skill with guided sessions.",
                imageName: "figure.archery"
            ),
            OnboardingModel(
                id: 5,
                title: "Badminton",
                description: "Smash your way to fitness with energetic badminton drills. Track rallies, improve reaction time, and play like a pro.",
                imageName: "figure.badminton"
            )
    ]
}
