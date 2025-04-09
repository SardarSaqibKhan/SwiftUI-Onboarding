# SwiftUI-Onboarding

## About
Onboarding plays a crucial role in modern apps, helping to engage users and introduce them to key features. This demo project is built entirely with SwiftUI and showcases a clean and structured approach to implementing an onboarding experience. It serves as a helpful reference for developers looking to integrate engaging animations and user-friendly onboarding flows in their apps.

## Demo
The video below demonstrates the onboarding experience in action:

![Image of Yaktocat](./Gif/onboarding.gif)

## Instructions
Update `OnboardingDataModel.swift` with your data, each entry in the array will add new onboarding screen.

```swift
extension OnboardingDataModel {
    static var data: [OnboardingDataModel] = [
        OnboardingDataModel(image: "onboarding-relax", heading: "Welcome to App", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        OnboardingDataModel(image: "onboarding-lookingatart", heading: "Explore the World", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        OnboardingDataModel(image: "onboarding-sharing1", heading: "Live Life Baby", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        OnboardingDataModel(image: "onboarding-security1", heading: "Work Hard", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        OnboardingDataModel(image: "onboarding-showclients", heading: "Stay Careless", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
    ]
}
```

## Tricks
For hooking into `Done` button click I have implemented escaping closure.

```swift
OnboardingViewPure(data: data, doneFunction: {
    /// Update your state here
    self.onboardinDone = true
    print("done onboarding")
})
```
