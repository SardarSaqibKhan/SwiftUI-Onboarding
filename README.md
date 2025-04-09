# SwiftUI-Onboarding

## About
Onboarding plays a crucial role in modern apps, helping to engage users and introduce them to key features. This demo project is built entirely with SwiftUI and showcases a clean and structured approach to implementing an onboarding experience. It serves as a helpful reference for developers looking to integrate engaging animations and user-friendly onboarding flows in their apps.

## Demo
The video below demonstrates the onboarding experience in action:

![Image of Yaktocat](./Gif/onboarding.gif)

## Instructions
Update `OnboardingDataModel.swift` with your data, each entry in the array will add new onboarding screen.

```swift
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

```
